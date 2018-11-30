<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="principal" />
        <title><g:message code="create.label.contact"/></title>
    </head>
    <body>
        <div id="create-contact" class="content scaffold-create" role="main">
            <h1><g:message code="create.label.contact"/></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.contact}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.contact}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <div class="row justify-content-around">
                <div class="col-lg-4 mb-4">
                    <div class="card border-success mb-3 mx-auto">
                        <div class="card-body">
                            <g:form resource="${this.contact}" method="POST">
                                <fieldset class="form">
                                    <f:all bean="contact"/>
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
</html>
