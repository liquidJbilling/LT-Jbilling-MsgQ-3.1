/*
The contents of this file are subject to the Jbilling Public License
Version 1.1 (the "License"); you may not use this file except in
compliance with the License. You may obtain a copy of the License at
http://www.jbilling.com/JPL/

Software distributed under the License is distributed on an "AS IS"
basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
License for the specific language governing rights and limitations
under the License.

The Original Code is jbilling.

The Initial Developer of the Original Code is Emiliano Conde.
Portions created by Sapienter Billing Software Corp. are Copyright 
(C) Sapienter Billing Software Corp. All Rights Reserved.

Contributor(s): ______________________________________.
*/
package com.sapienter.jbilling.client.util;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;

import javax.ejb.FinderException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts.Globals;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.config.ModuleConfig;
import org.apache.struts.util.RequestUtils;
import org.apache.struts.validator.DynaValidatorForm;

import com.sapienter.jbilling.common.JNDILookup;
import com.sapienter.jbilling.common.SessionInternalError;
import com.sapienter.jbilling.interfaces.UserSession;
import com.sapienter.jbilling.interfaces.UserSessionHome;
import com.sapienter.jbilling.server.user.UserDTOEx;

/**
 * This action is a helper class that replaces GenericMaintainAction.
 * It is meant for forms that are mostly CRUD (create-retrieve-update-delete)
 * to/from the database.
 * 
 * @author Emil
 *
 */
public abstract class CrudAction extends Action {
    protected ActionMapping mapping = null;
    protected HttpServletRequest request = null;
    protected ActionErrors errors = null;
    protected ActionMessages messages = null;
    protected Logger log = null;
    protected HttpSession session = null;
    protected DynaValidatorForm myForm = null;
    protected String action = null;
    protected String formName = null;
    
    // handy variables
    protected Integer selectedId = null;
    protected Integer languageId = null;
    protected Integer entityId = null;
    protected Integer executorId = null;
    
    // by default, it goes to a predefined value
    // the implementations can change this at will
    protected String forward;
 
    /**
     * A constructor with no arguments is required from the implementation
     * to initialize variables before Struts calls 'execute'.
     * Implement with:
     *    - setting the formName
     *    - initializing a reference to your remote session bean
     */
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        Object dtoHolder = null;
        forward = null;
        this.mapping = mapping;
        this.request = request;
        log = Logger.getLogger(CrudAction.class);
        errors = new ActionErrors();
        messages = new ActionMessages();
        session = request.getSession(false);
        action = request.getParameter("action");
        
        if (action == null) {
            throw new SessionInternalError("action has to be present in the request");
        }
        if (formName == null || formName.trim().length() == 0) {
            throw new SessionInternalError("formName has to be present");
        }
        
        selectedId = (Integer) session.getAttribute(
                Constants.SESSION_LIST_ID_SELECTED);
        languageId = (Integer) session.getAttribute(
                Constants.SESSION_LANGUAGE);
        executorId = (Integer) session.getAttribute(
                Constants.SESSION_LOGGED_USER_ID);
        entityId = (Integer) session.getAttribute(
                Constants.SESSION_ENTITY_ID_KEY);
        myForm = (DynaValidatorForm) form;

        log.debug("processing action : " + action);
        try {
            if (action.equals("edit")) {
                try {
                    // this deals with a button that resets a form
                    // that is why it works on a field from the form, 
                    // and not on an action from the request.
                    String reset = (String) myForm.get("reset");
                    if (reset != null && reset.length() > 0) {
                        preReset();
                        reset();
                    }
                } catch (IllegalArgumentException e) {
                }
                
                if (forward == null) {
                    preEdit();
                    if (errors.isEmpty()) {
                        dtoHolder = editFormToDTO();
                    }         
                    
                    // some errors could be added during the form->dto copy
                    if (!errors.isEmpty()) {
                        return(mapping.findForward(forward));
                    }                
                    
                    // see if this is a create, if so call it
                    boolean createCalled = false;
                    try {
                        String createFlag = (String) myForm.get("create");
                        if (createFlag != null && createFlag.length() > 0) {
                            forward = "create";
                            create(dtoHolder);
                            createCalled = true;
                        }
                    } catch (IllegalArgumentException e) {
                        // the 'create' form field is not there
                        // no problem, create is not implemented
                    }
                    
                    // you can't have a create and update in the same call
                    if (!createCalled) {
                        String messageKey = update(dtoHolder);
                        if (messageKey != null) {
                        	addGlobalMessage(messageKey);
                        }
                    }
                    
                    if (forward.equals("list")) {
                        //XXX: [MG] 
                    	//Most probably this is never called
                    	//Subclasses generally return forwards in the form of <mode>_<action>,
                    	//e.g: "type_list" instead of just "list"
                    	//
                    	//Original intention was:
                    	// remove the form from the session, otherwise it
                        // might show up in a later
                    	removeFormFromSession();
                    } 
                }
            } else if(action.equals("setup")) {
                preSetup();
                setup();
                postSetup();
            } else if(action.equals("delete")) {
                preDelete();
                String messageKey = delete();
                if (messageKey != null) {
                	addGlobalMessage(messageKey);
                }
                postDelete();
            } else if (!otherAction(action)){
                log.error("Invalid action:" + action);
                errors.add(ActionErrors.GLOBAL_ERROR,
                        new ActionError("all.internal"));
            }
        } catch (Exception e) {
            log.error("Exception ", e);
            errors.add(ActionErrors.GLOBAL_ERROR,
                   new ActionError("all.internal"));
        }

        // Remove any error messages attribute if none are required
        if ((errors == null) || errors.isEmpty()) {
            request.removeAttribute(Globals.ERROR_KEY);
        } else {
            // Save the error messages we need
            request.setAttribute(Globals.ERROR_KEY, errors);
        }
        
        // Remove any messages attribute if none are required
        if ((messages == null) || messages.isEmpty()) {
            request.removeAttribute(Globals.MESSAGE_KEY);
        } else {
            // Save the messages we need
            request.setAttribute(Globals.MESSAGE_KEY, messages);
        }
        
        log.debug("forwarding to " + forward);
        return mapping.findForward(forward);
    }
    
	private void preSetup() {
        ModuleConfig moduleConfig = RequestUtils.getModuleConfig(request,
                servlet.getServletContext());
        myForm = (DynaValidatorForm) RequestUtils.createActionForm(
                request, mapping, moduleConfig, servlet);
        forward = "edit";
    }
    
    /**
     * Setup only works when the form name has been setup
     * Implement by :
     *   - Get your dto by calling the remote session 
     *   - Set the form bean with the dto values
     *     Ex: myForm.set("name", dto.getDescription()); 
     */
    public abstract void setup();
    
    private void postSetup() {
        log.debug("setting up form name=" + formName + 
                " dyna=" + myForm);
                
        session.setAttribute(formName, myForm);
    }
        
    private void preEdit() {
        // do the validation, before moving any info to the dto
        errors = new ActionErrors(myForm.validate(mapping, request));
        forward = "edit";
    }
    
    /**
     * Implement this and 
     *   - create your DTO
     *   - populate it from 'myForm'
     *   - return your DTO
     */
    public abstract Object editFormToDTO();
    
    /**
     * For the create to work, you need a 'create' form variable.
     * This variable should have something in it for this method to get called
     *
     * Implement by calling your remote session (the server tier) with the DTO
     * that was initialized in the edit method. This dto is passed as a 
     * parameter to this method.
     */
    public abstract void create(Object dtoHolder);
    
    /**
     * Do not forget to remove a list object if applicable
     * 
     * Typical implementation does:
     *   - set the id for the dto (primary key)
     *   - call the remote session (server tier)
     *   - return the message key that tells the user the record was updated
     *     (or null for no message)
     * @param dtoHolder The DTO previously intialized in the edit call
     */
    public abstract String update(Object dtoHolder);
    
    public void preDelete() {
        forward = "deleted";
    }
    
    /**
     * 
     * Implement by:
     *   - getting some key fields of the row to delete from the session
     *   - call your remote session, passing the key fields as parameters
     */
    public abstract String delete();
    
    public void postDelete() {
    	removeFormFromSession();
    }
    
    private void preReset() {
        forward = "edit";
        myForm.initialize(mapping);
    }
    
    /**
     * Implement by removing objects from the session
     */
    public abstract void reset();
    
    /**
     * Implement to handle those specific actions that are not CRUD
     * Return false if the action is not supported. 
     * If you don't need to implement this methos, simply return false.
     */
    public abstract boolean otherAction(String action);

    public String getFormName() {
        return formName;
    }

    public void setFormName(String formName) {
        this.formName = formName;
    }
    
    protected void setForward(String aForward){
    	this.forward = aForward;
    }

    protected final void removeFormFromSession() {
    	session.removeAttribute(formName);		
	}
    
    protected final void addGlobalMessage(String messageCode){
    	if (messageCode != null){
    		messages.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage(messageCode));
    	}
    }
    
    protected final String float2string(Float arg) {
		return float2string(arg, session);
	}

    protected final Float string2float(String arg) {
        return string2float(arg, session);
    }
    
	private static String float2string(Float arg, HttpSession sess) {
		if (arg == null) {
			return null;
		}
		UserDTOEx user = (UserDTOEx) sess
				.getAttribute(Constants.SESSION_USER_DTO);
		NumberFormat nf = NumberFormat.getInstance(user.getLocale());
		if (nf instanceof DecimalFormat) {
			((DecimalFormat) nf).applyPattern("0.00");
		}
		return nf.format(arg);
	}

    private static Float string2float(String arg, HttpSession sess) {
        if (arg == null || arg.trim().length() == 0) {
            return null;
        }
        UserDTOEx user = (UserDTOEx) sess.getAttribute(Constants.SESSION_USER_DTO);
        NumberFormat nf = NumberFormat.getInstance(user.getLocale());
        
        try {
            return new Float(nf.parse(arg).floatValue());
        } catch (ParseException e) {
            return null;
        }
    }
    
	protected UserDTOEx getUser(Integer userId) throws FinderException {    
		UserDTOEx retValue = null;
		try {
			JNDILookup EJBFactory = JNDILookup.getFactory(false);
			UserSessionHome userHome = (UserSessionHome) EJBFactory.lookUpHome(//
					UserSessionHome.class,
					UserSessionHome.JNDI_NAME);
			UserSession userSession = userHome.create();
			retValue = userSession.getUserDTOEx(userId);
		} catch (FinderException e) {
			//XXX: [MG] why?
			throw new FinderException();
		} catch (Exception e) {
			throw new SessionInternalError(e);
		}
		return retValue;
	}
    
}
