<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="principal" />
        <g:set var="entityName" value="${message(code: 'menu.title.department', default: 'Department')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#show-department" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>--}%
        <div id="show-department" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message alert alert-dismissible alert-success" role="status"><button type="button" class="close" data-dismiss="alert">&times;</button> ${flash.message}</div>
            </g:if>

        <div class="row justify-content-around">
            <div class="col-lg-4 mb-4">
                <div class="card border-success mb-3 mx-auto">
                    <div class="card-body">
                        <f:display bean="department" />
                    </div>
                </div>
            </div>
        </div>
            <g:form resource="${this.department}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit btn btn-success" action="edit" resource="${this.department}"><i class="fa fa-edit"></i> <g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <button class="delete btn btn-danger" type="submit" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><i class="fa fa-eraser"></i> <g:message code="default.button.delete.label" default="Delete"/> </button>
                    %{--<input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
