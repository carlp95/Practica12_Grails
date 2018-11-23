<html>
<head>
    <meta name="layout" content="principal">
    <title>Home Page</title>
    <gvisualization:apiImport/>
</head>
<body>
    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1><g:message code="welcome.header"/></h1>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <gvisualization:pieCoreChart elementId="chart" title="${message(code: 'pie.title', default: 'Contactos según departamento')}" width="${500}" height="${500}"
                columns="${departments.name}" data="${departments.contacts}"/>

            <div id="chart"></div>

        </section>
    </div>
</body>
</html>