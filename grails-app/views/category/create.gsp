<%@ page import="practica12_grails.User" %>
<!DOCTYPE html>
<html>
<g:applyLayout name="principal">
    <head>
        <meta name="layout" content="principal" />
        %{--<asset:link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css"/>--}%
        %{--<asset:link rel="stylesheet" href="webjars/font-awesome/5.3.1/css/fontawesome.min.css"/>--}%
        %{--<asset:link rel="stylesheet" href="cerulean.css"/>--}%
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
        <div class="row justify-content-around">
            <div class="col-lg-4 mb-4">
                <div class="card border-success mb-3 mx-auto">
                    <div class="card-body">
                        <g:form resource="${this.category}" method="POST">
                            <fieldset class="form">
                                %{--<f:all bean="category" class="form-control"/>--}%
                                <f:field bean="category" property="name">
                                    <g:textField name="${property}" class="form-control" value="${}"/>
                                </f:field>
                            </fieldset>
                            <fieldset class="buttons">
                                <g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                            </fieldset>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
    <asset:javascript src="webjars/jquery/3.1.1/jquery.js"/>
    <asset:javascript src="webjars/popper.js/1.14.3/popper.min.js"/>
    <asset:javascript src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"/>
    <asset:javascript src="collapser.js"/>
</g:applyLayout>

</html>
