<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>
        <g:layoutTitle default="Department Manager"/>
    </title>

    <meta name="viewport" content="width=device-width, initial-scale= 1">
    <link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.css">
    <asset:link rel="stylesheet" href="style.css"/>
    <asset:javascript src="webjars/font-awesome/5.3.1/js/solid.js"/>
    <asset:javascript src="webjars/font-awesome/5.3.1/js/fontawesome.js"/>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <g:layoutHead/>
</head>

<body>
    <div class="wrapper">
        <nav id="sidebar">
            <div class="sidebar-header">
                <a href="/"><h3> <g:message code="home.title"/></h3></a>
            </div>
            <ul class="list-unstyled components">
                <li>
                    <a href="#categorySubmenu" data-toggle="collapse" class="dropdown-toggle"><i class="fa fa-bookmark"></i>   <g:message code="menu.title.category"/></a>
                    <ul class="collapse list-unstyled" id="categorySubmenu">
                        <li>
                            <a href="/category/create"><g:message code="submenu.create"/> </a>
                        </li>
                        <li>
                            <a href="/category"><g:message code="submenu.list"/> </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#contactSubmenu" data-toggle="collapse" class="dropdown-toggle"><i class="fa fa-address-card"></i>   <g:message code="menu.title.contact"/></a>
                    <ul class="collapse list-unstyled" id="contactSubmenu">
                        <li>
                            <a href="/contact/create"><g:message code="submenu.create"/> </a>
                        </li>
                        <li>
                            <a href="/contact"><g:message code="submenu.list"/> </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#departmentSubmenu" data-toggle="collapse" class="dropdown-toggle"><i class="fa fa-briefcase"></i>   <g:message code="menu.title.department"/></a>
                    <ul class="collapse list-unstyled" id="departmentSubmenu">
                        <li>
                            <a href="/department/create"><g:message code="submenu.create"/> </a>
                        </li>
                        <li>
                            <a href="/department"><g:message code="submenu.list"/> </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="content">
            <g:layoutBody/>
        </div>
    </div>
    <div class="footer" role="contentinfo"></div>
    <asset:javascript src="webjars/jquery/3.1.1/jquery.js"/>
    <asset:javascript src="webjars/popper.js/1.14.3/popper.min.js"/>
    <asset:javascript src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"/>
    <asset:javascript src="collapser.js"/>
</body>
</html>