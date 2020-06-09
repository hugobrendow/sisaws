<!DOCTYPE html>
<html lang="pt-BR">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" sizes="16x16" href="resources/views/plugins/images/favicon.png">
    <title>SisAWS</title>
		
    <link type="text/css" href="/sisaws/resources/views/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Menu CSS -->
    <link href="/sisaws/resources/views/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet"/>
    <!-- toast CSS -->
    <link href="/sisaws/resources/views/plugins/bower_components/toast-master/css/jquery.toast.css" rel="stylesheet"/>
    <!-- morris CSS -->
    <link href="/sisaws/resources/views/plugins/bower_components/morrisjs/morris.css" rel="stylesheet"/>
    <!-- animation CSS -->
    <link href="/sisaws/resources/views/css/animate.css" rel="stylesheet"/>
    <!-- Custom CSS -->
    <link href="/sisaws/resources/views/css/style.css" rel="stylesheet"/>
    <!-- color CSS -->
    <link href="/sisaws/resources/views/css/colors/blue-dark.css" id="theme" rel="stylesheet"/>
    <!-- spinner CSS -->
    <link href="/sisaws/resources/views/css/spinners.css" rel="stylesheet"/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
	<script src="/sisaws/resources/views/js/jquery.multi-select.js"></script>

</head>

<body>

    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse">
                    <i class="fa fa-bars"></i>
                </a>
                <div class="top-left-part">
                    <a class="logo" href="/sisaws/home">
<!--                         <b><img src="/sisaws/resources/views/plugins/images/pixeladmin-logo.png" width="80%" height="80%" alt="home" /> -->
                        </b><span class="hidden-xs">
<!--                             <img src="/sisaws/resources/views/plugins/images/pixeladmin-text.png" alt="home" /></span></a> -->
                            <img src="/sisaws/resources/views/plugins/images/freelogo.png" alt="home" /></span></a>
                </div>
                <ul class="nav navbar-top-links navbar-right pull-right">
                    <li>
                        <a class="profile-pic" href="#"> <img src="/sisaws/resources/views/plugins/images/users/varun.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs">Usuario</b> </a>
                    </li>
                    <li>
                        <a class="profile-pic" href="#"><i class="fa fa-sign-out fa-fw" aria-hidden="true"></i>Logout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- Left navbar-header -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse slimscrollsidebar">
            <ul class="nav" id="side-menu">
                    <li class="sidebar-search hidden-sm hidden-md hidden-lg">
                        <!-- /input-group -->
                    </li>

                    <li><a href="/sisaws/home" class="waves-effect"><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i> <span class="hide-menu">Dashboard</span></a></li>
                    <li> <a href="#" class="waves-effect"><i data-icon="/" class="linea-icon linea-basic fa fa-users fa-fw"></i> <span class="hide-menu">Usuarios<span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="/sisaws/usuario/listar">Lista Usuarios</a></li>
                            <li><a href="/sisaws/usuario/cadastrar">Cadastrar Usuario</a></li>
                        </ul>
                    </li>
                    <li> <a href="#" class="waves-effect"><i class="fa fa-linux fa-fw" aria-hidden="true"></i> <span class="hide-menu">Servidores<span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="/sisaws/servidor/listar">Lista de Servidores</a></li>
                            <li><a href="/sisaws/servidor/cadastrar">Cadastrar Servidor</a></li>
                        </ul>
                    </li>
                    <li> <a href="#" class="waves-effect"><i class="fa fa-wrench fa-fw" aria-hidden="true"></i><span class="hide-menu">Servicos<span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="/sisaws/servico/listar">Lista de Servicos</a></li>
                            <li><a href="/sisaws/servico/cadastrar">Cadastrar Servico</a></li>
                        </ul>
                    </li>   
                    <li> <a href="#" class="waves-effect"><i class="fa fa-book fa-fw" aria-hidden="true"></i><span class="hide-menu">Contratos<span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="/sisaws/contrato/listar">Lista de Contratos</a></li>
                            <li><a href="/sisaws/contrato/cadastrar">Cadastrar Contrato</a></li>
                        </ul>
                    </li>                                      
                    <li> <a href="#" class="waves-effect"><i class="fa fa-calendar fa-fw " aria-hidden="true"></i><span class="hide-menu">Agendamentos<span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="/sisaws/agendamento/listar">Lista de Agendamentos</a></li>
                            <li><a href="/sisaws/agendamento/realizar">Realizar Agendamento</a></li>
                        </ul>
                    </li>    
                    <li>
                        <a href="#" class="waves-effect"><i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i><span class="hide-menu">Relatorio de Custos</span></a>
                    </li>
                </ul>
            </div>
        </div>
</div>