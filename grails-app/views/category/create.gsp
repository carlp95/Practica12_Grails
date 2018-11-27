<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="principal" />
        %{--<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />--}%
        <title><g:message code="create.label.category"/></title>
    </head>
    <body>
        <div id="create-category" class="content scaffold-create" role="main">
            <h1><g:message code="create.label.category" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.category}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.category}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.category}" method="POST">
                <fieldset class="form">
                    %{--<f:all bean="category"/>--}%
                    <f:field bean="category" property="created">
                        <g:textField name="${property}" value="${}"/>
                    </f:field>
                    <f:field bean="category" property="created"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
