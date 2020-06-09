<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

	<c:import url="../componentes/cabecalho.jsp"/>

        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Agendamentos</h4>
                    </div>

                    <ol class="breadcrumb">
                        <li><a href="/sisaws/home">Painel</a></li>
                        <li class="active">Agendamentos</li>
                    </ol>

                </div>
                <button type="submit" class="btn btn-success" style="border-radius: 12px; float: right;">REALIZAR AGENDAMENTO</button>
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title">AGENDAMENTOS CADASTRADOS</h3>
                        <div class="table-responsive">
                            <table class="table ">
                                <thead>
                                    <tr>
										<th>SERVIÇO</th>
										<th>CONTRATO</th>
										<th>INICIO</th>
										<th>FIM</th>
                                    </tr>
                                </thead>
                                <tbody>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>
												<a href=""><button type="button" class="btn-link glyphicon glyphicon-edit"></button></a>
												<a href=""><button type="button" class="btn-link glyphicon glyphicon-remove"></button></a>
											</td>
										</tr>
                                </tbody>
                            </table> <a href="#">Todos os Agendamentos</a> </div>
                    </div>
                </div>
            </div>
	<!-- /#wrapper -->
	<!-- jQuery -->
	<script src="/sisaws/resources/views/plugins/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="/sisaws/resources/views/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Menu Plugin JavaScript -->
	<script
		src="/sisaws/resources/views/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
	<!--slimscroll JavaScript -->
	<script src="/sisaws/resources/views/js/jquery.slimscroll.js"></script>
	<!--Wave Effects -->
	<script src="/sisaws/resources/views/js/waves.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="/sisaws/resources/views/js/custom.min.js"></script>