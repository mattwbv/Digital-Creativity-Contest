<%@ page import="dcc.SubmissionArchive" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'submissionArchive.label', default: 'Submission')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><sec:ifAnyGranted roles="ROLE_ADMIN"><a class="adminHome" href="${createLink(uri: '/admin')}">Admin Home</a></sec:ifAnyGranted></li>
				<li><sec:ifAnyGranted roles="ROLE_JUDGE,ROLE_ADMIN"><a class="judgeHome" href="${createLink(uri: '/judge')}">Judge Home</a></sec:ifAnyGranted></li>
				<li><sec:ifLoggedIn><g:link controller="logout">Logout</g:link></sec:ifLoggedIn></li>
			</ul>
		</div>
		<div id="list-submissionArchive" class="content scaffold-list" role="main">
			<h1>Past Winners</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'submissionArchive.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="author" title="${message(code: 'submissionArchive.author.label', default: 'Author')}" />
					
						<g:sortableColumn property="category" title="${message(code: 'submissionArchive.category.label', default: 'Category')}" />

						<g:sortableColumn property="link" title="${message(code: 'submissionArchive.contestYear.label', default: 'Contest Year')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${submissionArchiveInstanceList}" status="i" var="submissionArchiveInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="showWinner" id="${submissionArchiveInstance.id}">${fieldValue(bean: submissionArchiveInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: submissionArchiveInstance, field: "author")}</td>
					
						<td>${fieldValue(bean: submissionArchiveInstance, field: "category")}</td>
					
						<td>${submissionArchiveInstance.contestYear}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${submissionArchiveInstanceTotal}" />
			</div>
		</div>
	</body>
</html>