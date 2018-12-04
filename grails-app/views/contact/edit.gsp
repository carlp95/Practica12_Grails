<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="principal" />
        <g:set var="entityName" value="${message(code: 'menu.title.contact', default: 'Contact')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#edit-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>--}%
        <div id="edit-contact" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.contact}">
            <ul class="errors alert alert-dismissible alert-danger" role="alert">
                <g:eachError bean="${this.contact}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <div class="row justify-content-around">
                <div class="col-lg-4 mb-4">
                    <div class="card border-success mb-3 mx-auto">
                        <div class="card-body">
                            <g:form resource="${this.contact}" method="PUT">
                                <g:hiddenField name="version" value="${this.contact?.version}" />
                                <fieldset class="form">
                                    <f:all bean="contact"/>
                                </fieldset>
                                <br>
                                <fieldset class="buttons">
                                    <button class="save btn btn-light" type="submit"><i class="fa fa-redo-alt"></i> <g:message code="default.button.update.label" default="Update"/></button>
                                    %{--<input class="save btn btn-light" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />--}%
                                </fieldset>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </body>
</html>
