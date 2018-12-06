<html>
<head>
    <meta name="layout" content="principal" />
    %{--<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />--}%
    <title><g:message code="list.label.user"/></title>
</head>
<body>
    <div id="list-user" class="content scaffold-list" role="main">
        <h1><g:message code="list.label.user"/></h1>
        <g:if test="${flash.message}">
            <div class="message alert alert-dismissible alert-info" role="status"><button type="button" class="close" data-dismiss="alert">&times;</button> ${flash.message}</div>
        </g:if>
        <div class="row">
            <div class="col-sm-3">
                <span class="badge badge-primary"><a href="/user/create"><i class="fas fa-cogs"></i> <g:message code="create.user.label" default="Create Users"/></a></span>
            </div>
            <div class="col-sm-3">
                <span class="badge badge-primary"><a href="/role/create"><i class="fas fa-cogs"></i> <g:message code="create.role.label" default="Create Roles"/></a></span>
            </div>
            <div class="col-sm-3">
                <span class="badge badge-primary"><a href="/userRole/create"><i class="fas fa-cogs"></i> <g:message code="create.userRole.label" default="Assign User Roles"/></a></span>
            </div>
        </div>
        <br>
        <div class="row">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th><g:message code="name.label" default="Name"/></th>
                    <th><g:message code="lastname.label" default="Last Name"/></th>
                    <th><g:message code="username.label" default="Username"/></th>
                    <th><g:message code="mail.label" default="Email"/></th>
                    <th><g:message code="menu.title.department"/></th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${practica12_grails.User.list()}" var="user">
                    <tr>
                        <td>${user.name}</td>
                        <td>${user.lastname}</td>
                        <td><a href="/user/edit/${user.id}" class="enlace">${user.username}</a></td>
                        <td>${user.email}</td>
                        <td>${user.department.name}</td>
                    </tr>
                </g:each>

                <div class="pagination">
                    <g:paginate total="${userCount ?: 0}" />
                </div>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>