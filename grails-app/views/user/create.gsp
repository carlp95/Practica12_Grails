<html>
<head>
    <meta name="layout" content="principal" />
    <g:set var="entityName" value="${message(code: 'username.label', default: 'User')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
    <div id="create-user" class="content" role="main">
        <h1><g:message code="default.create.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${this.user}">
            <ul class="errors alert alert-dismissible alert-danger" role="alert">
                <g:eachError bean="${this.user}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>

        <div class="row justify-content-around">
            <div class="col-lg-4 mb-4">
                <div class="card border-success mb-3 mx-auto">
                    <div class="card-body">
                        <g:form resource="${this.user}" method="POST" class="mx-auto">
                            <fieldset class="form">
                                <div class="form-group row">
                                    <div class="form-group col-md-6">
                                        <label for="name"><g:message code="name.label" default="Name"/>*</label>
                                        <input id="name" name="name" type="text" value="${}" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="lastname"><g:message code="lastname.label" default="Last Name"/>*</label>
                                        <input id="lastname" name="lastname" type="text" value="${}" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email"><g:message code="mail.label" default="Email"/>*</label>
                                    <input id="email" name="email" type="email" value="${}">
                                </div>
                                <div class="form-group">
                                    <label for="username"><g:message code="username.label" default="Username"/>*</label>
                                    <input id="username" name="username" type="text" value="${}" required>
                                </div>
                                <div class="form-group">
                                    <label for="password"><g:message code="password.label" default="Password"/>*</label>
                                    <input id="password" type="password" name="password" value="${}" required>
                                </div>
                                <div class="form-group">
                                    <label for="department"><g:message code="menu.title.department" default="Departmen"/>*</label>
                                    <select id="department" name="department">
                                        <g:each in="${practica12_grails.Department.list()}" var="department">
                                            <option value="${department.id}">${department.name}</option>
                                        </g:each>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="roles"><g:message code="role.label" default="Role"/>*</label>
                                    <select id="roles" name="roles">
                                        <g:each in="${practica12_grails.Role.list()}" var="role">
                                            <option value="${role.id}">${role.authority}</option>
                                        </g:each>
                                    </select>
                                </div>
                                <div class="form-group row">
                                    <button name="create" class="save btn btn-primary mx-auto" type="submit"><i class="fa fa-save"></i> <g:message code="default.button.create.label" default="Create"/></button>
                                </div>
                            </fieldset>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>