package com.sapienter.jbilling.server.util.amqp;

public class DeleteOrderResponse extends ResponseBase {

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("DeleteOrderResponse [getCorrelationId()=")
				.append(getCorrelationId()).append(", getIsSuccess()=")
				.append(getIsSuccess()).append(", getErrorMessage()=")
				.append(getErrorMessage()).append(", getExceptionClass()=")
				.append(getExceptionClass()).append("]");
		return builder.toString();
	}

}
