<%@ page import="work.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
        <ckeditor:resources/>
	</head>
	<body>
		<a href="#create-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="خانه"/></a></li>
				<li><g:link class="list" action="list"><g:message code="لیست محصولات" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-product" class="content scaffold-create" role="main">
			<h1><g:message code="محصول جدید" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

			<g:hasErrors bean="${productInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${productInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>

			</ul>

			</g:hasErrors>
			<g:form action="save"  enctype="multipart/form-data">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'ذخیره', default: 'ذخیره')}" />
				</fieldset>
			</g:form>

		</div>

	</body>
</html>
