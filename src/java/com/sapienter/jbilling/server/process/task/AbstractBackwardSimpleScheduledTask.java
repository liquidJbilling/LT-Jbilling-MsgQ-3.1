package com.sapienter.jbilling.server.process.task;

import java.text.ParseException;

import org.apache.log4j.Logger;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.SimpleTrigger;

import com.sapienter.jbilling.common.Util;
import com.sapienter.jbilling.server.pluggableTask.admin.PluggableTaskException;

/**
 * A simple Scheduled process plug-in, executing the extending process class on a simple schedule.
 *
 * This plug-in accepts the standard {@link AbstractSimpleScheduledTask} plug-in parameters
 * for scheduling. If these parameters are omitted (all parameters are not defined or blank)
 * the plug-in will be scheduled using the jbilling.properties "process.time" and
 * "process.frequency" values, therefore named as 'AbstractBackward' because of this backward
 * compatility in scheduling the same process via the old jbilling.properties files.
 *
 * @see com.sapienter.jbilling.server.process.task.AbstractSimpleScheduledTask
 *
 * @author Vikas Bodani
 * @since 02-08-2010
 */

public abstract class AbstractBackwardSimpleScheduledTask extends
        AbstractSimpleScheduledTask {
    private static final Logger LOG = Logger.getLogger(AbstractBackwardSimpleScheduledTask.class);
    private static final String PROPERTY_PROCESS_TIME = "process.time";
    private static final String PROPERTY_PROCESS_FREQ = "process.frequency";

    public void execute(JobExecutionContext context) throws JobExecutionException {
        _init(context);
    }

    @Override
    public String getScheduleString() {
        StringBuilder builder = new StringBuilder();

        try {
            builder.append("start: ");
            builder.append(useProperties()
                           ? Util.getSysProp(PROPERTY_PROCESS_TIME)
                           : getParameter(PARAM_START_TIME, DEFAULT_START_TIME));
            builder.append(", ");

            builder.append("end: ");
            builder.append(getParameter(PARAM_END_TIME, DEFAULT_END_TIME));
            builder.append(", ");

            Integer repeat = getParameter(PARAM_REPEAT, DEFAULT_REPEAT);
            builder.append("repeat: ");
            builder.append((repeat == SimpleTrigger.REPEAT_INDEFINITELY ? "infinite" : repeat));
            builder.append(", ");

            builder.append("interval: ");
            builder.append(useProperties()
                           ? Util.getSysProp(PROPERTY_PROCESS_FREQ) + " mins"
                           : getParameter(PARAM_INTERVAL, DEFAULT_INTERVAL) + " hrs");

        } catch (PluggableTaskException e) {
            LOG.error("Exception occurred parsing plug-in parameters", e);
        }

        return builder.toString();
    }

    protected SimpleTrigger setTriggerFromProperties(SimpleTrigger trigger) throws PluggableTaskException {
    try {
            // set process.time as trigger start time if set
            String start = Util.getSysProp(PROPERTY_PROCESS_TIME);
            if (start != null && !"".equals(start))
                trigger.setStartTime(DATE_FORMAT.parse(start));

            // set process.frequency as trigger repeat interval if set
            String repeat = Util.getSysProp(PROPERTY_PROCESS_FREQ);
            if (repeat != null && !"".equals(repeat))
                trigger.setRepeatInterval(Long.parseLong(repeat) * 60 * 1000);

        } catch (ParseException e) {
            throw new PluggableTaskException("Exception parsing process.time for schedule", e);
        } catch (NumberFormatException e) {
            throw new PluggableTaskException("Exception parsing process.frequency for schedule", e);
        }
        return trigger;
    }

    /**
     * Returns true if the billing process should be scheduled using values from jbilling.properties
     * or if the schedule should be derived from plug-in parameters.
     *
     * @return true if properties should be used for scheduling, false if schedule from plug-ins
     */
    protected boolean useProperties() {
        return parameters.get(PARAM_START_TIME) == null
            && parameters.get(PARAM_END_TIME) == null
            && parameters.get(PARAM_REPEAT) == null
            && parameters.get(PARAM_INTERVAL) == null;
    }
}