
<%@ page import="dcc.Judge" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'judge.label', default: 'Judge')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-judge" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><sec:ifAnyGranted roles="ROLE_ADMIN"><a class="adminHome" href="${createLink(uri: '/admin')}">Admin Home</a></sec:ifAnyGranted></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-judge" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list judge">
				<g:if test="${judgeInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="judge.username.label" default="Username" /></span>
					<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${judgeInstance}" field="username"/></span>
				</li>
				</g:if>

				<g:if test="${judgeInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="judge.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${judgeInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${judgeInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="judge.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${judgeInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="judge.enabled.label" default="Enabled" /></span>
					<span class="property-value" aria-labelledby="enabled-label"><g:fieldValue bean="${judgeInstance}" field="enabled"/></span>
				</li>

				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="judge.accountExpired.label" default="Account Expired" /></span>
					<span class="property-value" aria-labelledby="accountExpired-label"><g:fieldValue bean="${judgeInstance}" field="accountExpired"/></span>
				</li>

				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="judge.accountLocked.label" default="Account Locked" /></span>
					<span class="property-value" aria-labelledby="accountLocked-label"><g:fieldValue bean="${judgeInstance}" field="accountLocked"/></span>
				</li>

				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="judge.passwordExpired.label" default="Password Expired" /></span>
					<span class="property-value" aria-labelledby="passwordExpired-label"><g:fieldValue bean="${judgeInstance}" field="passwordExpired"/></span>
				</li>

<%--				<g:if test="${judgeInstance?.submission}">--%>
<%--				<li class="fieldcontain">--%>
<%--					<span id="submission-label" class="property-label"><g:message code="judge.submission.label" default="Submission" /></span>--%>
<%--					--%>
<%--						<span class="property-value" aria-labelledby="submission-label"><g:link controller="submission" action="show" id="${judgeInstance?.submission?.id}">${judgeInstance?.submission?.encodeAsHTML()}</g:link></span>--%>
<%--					--%>
<%--				</li>--%>
<%--				</g:if>--%>
<%--			--%>
<%--				<g:if test="${judgeInstance?.ranks}">--%>
<%--				<li class="fieldcontain">--%>
<%--					<span id="ranks-label" class="property-label"><g:message code="judge.ranks.label" default="Ranks" /></span>--%>
<%--					--%>
<%--						<g:each in="${judgeInstance.ranks}" var="r">--%>
<%--						<span class="property-value" aria-labelledby="ranks-label"><g:link controller="rank" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>--%>
<%--						</g:each>--%>
<%--					--%>
<%--				</li>--%>
<%--				</g:if>--%>
<%--			--%>
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${judgeInstance?.id}" />
					<g:link class="edit" action="edit" id="${judgeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>