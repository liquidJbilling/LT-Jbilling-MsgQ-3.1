<html>
<head>
<title>
${title}
</title>
</head>
<body>
<!-- TODO -use internationalization for all the text/prompts -->
<p>
<g:hasErrors>
	<div class="errors"><g:renderErrors bean="${user}" as="list" />
	</div>
</g:hasErrors>
</p>
<table class="body">
	<tr>
		<td valign="top"><g:message code="${flash.message}"
			args="${flash.args}" default="${flash.defaultMsg}" />
		<p class="title"><g:message code"prompt.create.edit.cust"/></p>
		<g:form action="postEdit">

			<table class="form" style="border: 2px solid black; padding: 5px;">
				<tr>
					<td align="center" colspan="2">
					<H2>Create/Edit Customer</H2>
					</td>
				</tr>
				<tr>
					<td>
					<div id="customerInfo">
					<table>
						<tr>
							<td valign="top">
							<table>
								<tr>
									<td class="form_prompt"><g:message
										code="prompt.customer.number" /></td>
									<td>
									${user?.id}
									</td>
								</tr>
								<tr>
									<td class="form_prompt"><g:message
										code="prompt.customer.type" /></td>
									<td>
									${user?.role}
									</td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="userName"> <g:message
										code="prompt.login.name" /></label></td>
									<td><g:textField name="userName"
										value="${user?.userName}" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="password"> <g:message
										code="prompt.current.password" /> </label></td>
									<td><g:passwordField name="password"
										value="${user?.password}" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="newPassword">
									<g:message code="prompt.password" /></label></td>
									<td><g:passwordField name="newPassword" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="verifyPassword">
									<g:message code="prompt.verify.password" /></label></td>
									<td><g:passwordField name="verifyPassword" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="statusId"> <g:message
										code="prompt.user.status" /></label></td>
									<td><g:userStatus name="statusId"
										value="${user?.statusId}" languageId="${languageId}" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><g:message
										code="prompt.user.subscriber.status" /></td>
									<td><g:subscriberStatus name="subscriberStatusId"
										value="${user?.subscriberStatusId}" languageId="${languageId}" />
									</td>
								</tr>
								<tr>
									<td class="form_prompt"><g:message
										code="prompt.user.language" /></td>
									<td><g:select name="languageId"
										from="${com.sapienter.jbilling.server.util.db.LanguageDTO.list()}"
										optionKey="id" optionValue="description"
										noSelection="${['null':'-']}" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><g:message
										code="prompt.user.currency" /></td>
									<td><g:select name="currencyId"
										from="${com.sapienter.jbilling.server.util.db.CurrencyDTO.list()}"
										optionKey="id" optionValue="description"
										value="${user?.currencyId}" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><g:message
										code="prompt.exclude.ageing" /></td>
									<td><g:checkBox name="excludeFromAgeing"
										checked="true" /></td>
								</tr>
							</table>
							</td>

							<td valign="top">
							<table style="border-left: 2px solid black; padding: 5px;">
								<tr>
									<td class="form_prompt"><g:message
										code="prompt.contact.type" /></td>
									<td>
									${user?.contact?.type}
									</td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="organizationName">
									<g:message code="prompt.organization.name" /></label></td>
									<td><g:textField name="contact.organizationName" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="firstName"> <g:message
										code="prompt.first.name" /></label></td>
									<td><g:textField name="contact.firstName" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="lastName"> <g:message
										code="prompt.last.name" /></label></td>
									<td><g:textField name="contact.lastName" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="phoneNumber">
									<g:message code="prompt.phone.number" /></label></td>
									<td><g:textField name="contact.phoneCountryCode"
										size="5" /> -<g:textField name="contact.phoneAreaCode"
										size="5" /> -<g:textField name="contact.phoneNumber"
										size="12" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="email"> <g:message
										code="prompt.email.address" /></label></td>
									<td><g:textField name="contact.email" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="address1"> <g:message
										code="prompt.address1" /></label></td>
									<td><g:textField name="contact.address1" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="address2"> <g:message
										code="prompt.address2" /></label></td>
									<td><g:textField name="contact.address2" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="city"> <g:message
										code="prompt.city" /></label></td>
									<td><g:textField name="contact.city" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="stateProvince">
									<g:message code="prompt.state" /></label></td>
									<td><g:textField name="contact.stateProvince" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="postalCode"> <g:message
										code="prompt.zip" /></label></td>
									<td><g:textField name="contact.postalCode" /></td>
								</tr>
								<tr>
									<td class="form_prompt"><label for="countryCode">
									<g:message code="prompt.country" /></label></td>
									<td><g:textField name="contact.countryCode" /></td>
								</tr>
								<tr>
									<td colspan="2"><g:checkBox name="excludeFromAgeing"
										checked="true" /> <g:message
										code="prompt.include.in.notifications" /></td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
					</div>
					<!--  customer info div ends--></td>
				</tr>

				<!-- blank -->
				<tr>
					<td colspan="2"></td>
				</tr>
				<tr>
					<td colspan="2">
					<div id="creditCard">
					<table style="border: 2px solid black; padding: 5px;">
						<tr>
							<td colspan="3" align="left"><img src="arrow.ico"><label>Credit
							Card</label></td>
						</tr>
						<tr>
							<td class="form_prompt"><g:message code="prompt.credit.card" />:</td>
							<td><g:textField name="creditCard.number" /></td>
							<td></td>
						</tr>
						<tr>
							<td class="form_prompt"><g:message
								code="prompt.name.on.card" />:</td>
							<td><g:textField name="creditCard.name" /></td>
							<td class="form_prompt"><g:checkBox name="isAutomaticPayment"
										checked="true" /><g:message
								code="prompt.preferred.auto.payment" /></td>
						</tr>
						<tr>
							<td class="form_prompt"><g:message code="prompt.expiry.date" />:</td>
							<td><g:textField name="creditCard.month" size="2" />-<g:textField
								name="creditCard.year" size="4" /> mm-yyyy</td>
							<td></td>
						</tr>
					</table>
					</div>
					<!-- credit card info div ends --></td>
				</tr>

				<tr>
					<td colspan="2">
					<div id="ach">
					<table style="border: 2px solid black; padding: 5px;">
						<tr>
							<td colspan="3" align="left"><img src="arrow.ico"><label>ACH</label>
							</td>
						</tr>
						<tr>
							<td class="form_prompt"><g:message
								code="prompt.aba.routing.num" />:</td>
							<td><g:textField name="ach.abaRouting" /></td>
							<td></td>
						</tr>
						<tr>
							<td class="form_prompt"><g:message
								code="prompt.bank.acc.num" />:</td>
							<td><g:textField name="ach.bankAccount" /></td>
							<td class="form_prompt"><g:checkBox name="isAutomaticPayment2"
										checked="true" /><g:message
								code="prompt.preferred.auto.payment" /></td>
						</tr>
						<tr>
							<td class="form_prompt"><g:message code="prompt.bank.name" />:</td>
							<td><g:textField name="ach.bankName" /></td>
							<td></td>
						</tr>
						<tr>
							<td class="form_prompt"><g:message
								code="prompt.name.customer.account" />:</td>
							<td><g:textField name="ach.accountName" /></td>
							<td></td>
						</tr>
						<tr>
							<td class="form_prompt"><g:message
								code="prompt.account.type" />:</td>
							<td>Checking<g:radio name="ach.accountType" value="1"></g:radio>
							Savings<g:radio name="ach.accountType" value="2"></g:radio>
							</td>
							<td></td>
						</tr>
					</table>
					</div>
					</td>
				</tr>

				<tr>
					<td>
					<div id="notes">
					<table style="border: 2px solid black; padding: 5px;">
						<tr>
							<td><g:textArea id='note' name="note" rows="3" cols="50">Lorem Ipsum</g:textArea></td>
							<td valign="top"><input type="button" name="editNote"
								value="Edit Note" /></td>
						</tr>
					</table>
					</div>
					</td>
				</tr>
				<tr>
					<td align="center">
					<table>
						<tr>
							<td><g:actionSubmit value="Submit" action="postEdit"
								class="form_button" /></td>
							<td><g:actionSubmit value="Cancel" action="cancel"
								class="form_button" /></td>
						</tr>
					</table>
					</td>
				</tr>
			</table>
		</g:form></td>
	</tr>
	<tr>
		<td colspan="3">
		<p class="footer">Visit&nbsp;<a target="jbsite"
			href="http://www.jbilling.com">jbilling.com</a>&nbsp;for
		documentation and support.<br />
		Copyright Enterprise jBilling Software Ltd. (c) 2009. All rights
		reserved.</p>

		</td>
	</tr>
</table>
</body>
</html>