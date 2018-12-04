<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="principal" />
        %{--<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />--}%
        <title><g:message code="list.label.category"/></title>
    </head>
    <body>
        <div id="list-category" class="content scaffold-list" role="main">
            <h1><g:message code="list.label.category"/></h1>
            <g:if test="${flash.message}">
                <div class="message alert alert-dismissible alert-info" role="status"><button type="button" class="close" data-dismiss="alert">&times;</button> ${flash.message}</div>
            </g:if>
            <f:table collection="${categoryList}"/>

            <div class="pagination">
                <g:paginate total="${categoryCount ?: 0}" />
            </div>
        </div>
    </body>
</html>