<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>
        <g:layoutTitle default="Department Manager"/>
    </title>

    <meta name="viewport" content="width=device-width, initial-scale= 1">

    <asset:stylesheet src="style.css"/>
    <g:layoutHead/>
</head>

<body>
    <div class="wrapper">
        <nav id="sidebar">
            <div class="sidebar-header">
                <a href="/"><h3>Department Management</h3></a>
            </div>
            <ul class="list-unstyled components">
                <li>
                    <a href="/category"><i class="fas fa-bookmark"></i> Category</a>
                </li>
                <li>
                    <a href="/contact"><i class="fas fa-address-card"></i>Contact</a>
                </li>
                <li>
                    <a href="/department"><i class="fas fa-briefcase"></i>Department</a>
                </li>
            </ul>
        </nav>
        <div id="content">

        </div>
    </div>
    <g:layoutBody/>
    <div class="footer" role="contentinfo"></div>
    <asset:javascript src="collapser.js"/>
</body>
</html>