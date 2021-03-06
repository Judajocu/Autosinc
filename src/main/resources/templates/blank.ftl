<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <@page_head/>
    <!-- web-fonts -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,500' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <!-- off-canvas -->
    <link href="/css/mobile-menu.css" rel="stylesheet">
    <!-- font-awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <!-- Flat Icon -->
    <link href="/fonts/flaticon/flaticon.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Style CSS -->
    <link href="/css/style.css" rel="stylesheet">

    <link rel="stylesheet" href="/css/detalles.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="main-wrapper">

    <!-- Page Preloader -->
    <div id="preloader">
        <div id="status">
            <div class="status-mes"></div>
        </div>
    </div>

    <div class="uc-mobile-menu-pusher">

        <div class="content-wrapper">
            <!-- .navbar-top -->
            <nav class="navbar m-menu navbar-default">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.html"><img src="/img/logop2.jpg" alt=""></a>
                    </div>


                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="#navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right main-nav">
                            <li class="active"><a href="/">Inicio</a></li>
                            <li><a href="/about">Sobre Nosotros</a></li>
                            <li><a href="/poll">Encuesta</a></li>
                            <li class="dropdown dropdown-toggle"><a href="#" data-toggle="dropdown">Resultados <span><i class="fa fa-angle-down"></i></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/lista">Ver lista de datos</a></li>
                                    <li><a href="/detail">Detalles</a></li>
                                </ul>
                            </li>
                        </ul>

                    </div>
                    <!-- .navbar-collapse -->
                </div>
                <!-- .container -->
            </nav>
            <!-- .nav -->


            <section class="single-page-title single-page-title-about">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <@titulo/>
                        </div>
                    </div>
                </div>
            </section>
            <!-- .page-title -->

            <@page_body/>




            <footer class="footer">

                <div class="copyright-section">
                    <div class="container clearfix">
                        <span class="copytext">Copyright &copy; 2018 | <a href="https://uicookies.com/downloads/marketer-bootstrap-html5-advertising-agency-website-template/">Marketer</a> Designed And Developed By: <strong style="color:#4d6de3">uiCookies.com</strong></span>

                        <ul class="list-inline pull-right">
                            <li class="active"><a href="/">Inicio</a></li>
                            <li><a href="/about">Sobre Nosotros</a></li>
                            <li><a href="/poll">Encuesta</a></li>
                        </ul>
                    </div><!-- .container -->

                </div><!-- .copyright-section -->
            </footer>
            <!-- .footer -->

        </div>
        <!-- .content-wrapper -->
    </div>
    <!-- .offcanvas-pusher -->

    <div class="uc-mobile-menu uc-mobile-menu-effect">
        <button type="button" class="close" aria-hidden="true" data-toggle="offcanvas"
                id="uc-mobile-menu-close-btn">&times;</button>
        <div>
            <div>
                <ul id="menu">
                    <li><a href="/">Inicio</a></li>
                    <li><a href="/about">Sobre Nosotros</a></li>
                    <li><a href="/poll">Encuesta</a></li>
                    <li><a href="/lista">Ver lista</a></li>
                    <li><a href="/detail">Detalles</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- .uc-mobile-menu -->
</div>
<!-- #main-wrapper -->


<!-- Script -->
<script src="/js/jquery-2.1.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
        integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
        crossorigin="anonymous"></script>
<script src="/js/smoothscroll.js"></script>
<script src="/js/mobile-menu.js"></script>
<script src="/js/scripts.js"></script>
<script src="http://code.jquery.com/jquery-2.2.4.min.js">
</script>
<script src="/js/location.js"></script>
</body>
</html>