<html>
<head>
    <meta charset="UTF-8">
    <title><g:message code="signin.label"/> </title>
    <asset:link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css"/>
    <asset:link rel="stylesheet" href="login.css"/>
    <asset:link rel="stylesheet" href="webjars/font-awesome/5.3.1/css/fontawesome.min.css"/>
    <asset:link rel="stylesheet" href="webjars/font-awesome/5.3.1/css/all.min.css"/>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5">
                <div class="card-body">
                    <h5 class="card-title text-center"><g:message code="signin.label"/></h5>
                    <g:if test="${flash.message}">
                        <div class="login_message">${flash.message}</div>
                    </g:if>
                    <form action="/login/authenticate" method="POST" id="loginForm" autocomplete="off">
                        <div class="form-label-group">
                            <input type="text" id="username" name="username" class="form-control text_" placeholder="${message(code: "username.label")}" required autofocus>
                            <label for="username"><g:message code="username.label"/></label>
                        </div>

                        <div class="form-label-group">
                            <input type="password" id="inputPassword" name="password" class="form-control text_" placeholder="${message(code: 'password.label')}" required>
                            <label for="inputPassword"><g:message code="password.label"/></label>
                        </div>

                        %{--<div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1"><g:message code="remember.label"/></label>
                        </div>--}%
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit"><g:message code="signin.label"/> </button>
                        %{--<hr class="my-4">--}%
                        %{--<button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i> Sign in with Google</button>--}%
                        %{--<button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i> Sign in with Facebook</button>--}%
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>


</html>