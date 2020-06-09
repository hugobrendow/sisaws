<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<c:import url="componentes/cabecalho.jsp"/>
       <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Painel</h4>
                    </div>
                    <ol class="breadcrumb">
                        <li><a href="#">Painel</a></li>
                    </ol>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- row -->
            <div class="row">
                <!--col -->
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="white-box">
                        <div class="col-in row">
                            <div class="col-md-6 col-sm-6 col-xs-6"> <i data-icon="E" class="linea-icon linea-basic"></i>
                                <h5 class="text-muted vb">SERVIÇOS</h5>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <h3 class="counter text-right m-t-15 text-danger">${quantidadeServicos}</h3>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"> <span class="sr-only">40% Complete (success)</span> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.col -->
                <!--col -->
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="white-box">
                        <div class="col-in row">
                            <div class="col-md-6 col-sm-6 col-xs-6"> <i class="linea-icon linea-basic" data-icon="&#xe01b;"></i>
                                <h5 class="text-muted vb">USUÁRIOS</h5>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <h3 class="counter text-right m-t-15 text-megna">${quantidadeUsuarios}</h3>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-megna" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"> <span class="sr-only">40% Complete (success)</span> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.col -->
                <!--col -->
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="white-box">
                        <div class="col-in row">
                            <div class="col-md-6 col-sm-6 col-xs-6"> <i class="linea-icon linea-basic" data-icon="&#xe00b;"></i>
                                <h5 class="text-muted vb">SERVIDORES</h5>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <h3 class="counter text-right m-t-15 text-primary">${quantidadeServidores}</h3>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"> <span class="sr-only">40% Complete (success)</span> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
            <!--row -->
            <!--row -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title">Próximos Agendamentos</h3>

                        <div class="table-responsive">
                            <table class="table ">
                                <thead>
                                    <tr>
                                        <th>SERVIÇO</th>
                                        <th>INICIO</th>
                                        <th>FIM</th>
                                        <th>RESPONSÁVEL</th>
                                        <th>CONTRATO</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="txt-oflo">Pixel admin</td>
                                        <td>11/01/2018 - 11:00</td>
                                        <td>11/02/2018 - 12:00</td>
                                        <td>Michel Hansen</span>
                                        </td>
                                        <td>MCTIC</td>
                                    </tr>
                                </tbody>
                            </table> <a href="#">Todos os agendamentos</a> </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <!-- row -->
            <!-- /.container-fluid -->
            <footer class="footer text-center"> 2017 &copy; Pixel Admin brought to you by wrappixel.com </footer>
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="/sisaws/resources/views/plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="/sisaws/resources/views/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="/sisaws/resources/views/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="/sisaws/resources/views/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="/sisaws/resources/views/js/waves.js"></script>
    <!--Counter js -->
    <script src="/sisaws/resources/views/plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    <script src="/sisaws/resources/views/plugins/bower_components/counterup/jquery.counterup.min.js"></script>
    <!--Morris JavaScript -->
    <script src="/sisaws/resources/views/plugins/bower_components/raphael/raphael-min.js"></script>
    <script src="/sisaws/resources/views/plugins/bower_components/morrisjs/morris.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="/sisaws/resources/views/js/custom.min.js"></script>
    <script src="/sisaws/resources/views/js/dashboard1.js"></script>
    <script src="/sisaws/resources/views/plugins/bower_components/toast-master/js/jquery.toast.js"></script>