<html>
<head>
    <meta name="layout" content="principal">
    <title>Home Page</title>
</head>
<body>
    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to the Department Management System</h1>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
        </section>
    </div>
</body>
</html>