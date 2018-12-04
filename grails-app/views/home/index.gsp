<html>
<head>
    <meta name="layout" content="principal">
    <title>Home Page</title>
    <gvisualization:apiImport/>
</head>
<body>
    <div id="content" role="main">
        <h1><g:message code="welcome.header"/></h1>

        <g:if test="${hour < 12 }">
            <h3><g:message code="morning.welcome.label"/> , ${user.name}</h3>
        </g:if>
        <g:elseif test="${hour >= 12 && hour < 18}">
            <h3><g:message code="afternoon.welcome.label"/>, ${user.name}</h3>
        </g:elseif>
        <g:elseif test="${hour > 18}">
            <h3><g:message code="night.welcome.label"/>, ${user.name}</h3>
        </g:elseif>

        <section class="row colset-2-its">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <gvisualization:pieCoreChart elementId="chart" title="${message(code: 'pie.title', default: 'Contactos según departamento')}" width="${500}" height="${500}"
                columns="${departmentsColumns}" data="${departmentsData}"/>
            <div id="chart"></div>

            <g:if test="${role}">
                %{--Aquí va un botón para administrar los usuarios--}%
            </g:if>

        </section>
    </div>
</body>
</html>