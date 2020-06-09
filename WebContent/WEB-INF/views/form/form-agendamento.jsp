<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../componentes/cabecalho.jsp" />


<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Realizar Agendamento</h4>
			</div>

			<ol class="breadcrumb">
				<li><a href="/sisaws/home">Painel</a></li>
				<li><a href="/sisaws/agendamento/listar">Agendamentos</a></li>
				<li class="active">Agendamento</li>
			</ol>
		</div>
	</div>

	<!-- /.row -->
	<!-- .row -->
	<div class="row">
		<div class="col-md-4 col-xs-12">
			<div class="white-box">
				<div class="user-bg">
					<img width="105%" alt="user"
						src="https://a0.awsstatic.com/main/images/logos/aws_logo_smile_1200x630.png">

				</div>
			</div>
		</div>
		<div class="col-md-8 col-xs-12">
			<div class="white-box">
				<form action="/sisaws/agendamento/realizaAgendamento"
					class="form-horizontal form-material">
					<div class="form-group">

						<label class="col-sm-12">Servico</label>
						<div class="col-sm-12">
							<select class="form-control form-control-line" name="servicoId"
								id="servicoId">
								<c:forEach items="${servicos}" var="servico">
									<option value="${servico.nome}">${servico.nome}</option>
								</c:forEach>
							</select>
						</div>
						<label class="col-sm-12">Contrato</label>
						<div class="col-sm-12">
							<select class="form-control form-control-line" name="contratoId"
								id="contratoId">
								<c:forEach items="${contratos}" var="contrato">
									<option value="${contrato.id}">${contrato.descricao}</option>
								</c:forEach>
							</select> <br />

							<div class="form-group">
							
							<div class="col-md-12">
								<div class="col-md-6">
									<label class="col-sm-12">Horario para inicio</label>
									<script src="/sisaws/resources/views/datepicker/jquery.js"></script>
									<script src="/sisaws/resources/views/clockpicker/jquery-clockpicker.min.js"></script>
									<script src="/sisaws/resources/views/clockpicker/boostrap-clockpicker.min.js"></script>
									<link href="/sisaws/resources/views/clockpicker/bootstrap-clockpicker.min.css" rel="stylesheet"/>
									<link href="/sisaws/resources/views/clockpicker/jquery-clockpicker.min.css" rel="stylesheet"/>
									
									<div class="input-group clockpicker">
									    <input type="text" class="form-control">
									    <span class="input-group-addon">
									        <span class="glyphicon glyphicon-time"></span>
									    </span>
									</div>
									<script type="text/javascript">
									$('.clockpicker').clockpicker({
									    placement: 'top',
									    align: 'left',
									    donetext: 'OK'
									});
									</script>
								</div>
								<div class="col-md-6">
									<label class="col-sm-12">Horario para fim</label>
									<script src="/sisaws/resources/views/datepicker/jquery.js"></script>
									<script src="/sisaws/resources/views/clockpicker/jquery-clockpicker.min.js"></script>
									<script src="/sisaws/resources/views/clockpicker/boostrap-clockpicker.min.js"></script>
									<link href="/sisaws/resources/views/clockpicker/bootstrap-clockpicker.min.css" rel="stylesheet"/>
									<link href="/sisaws/resources/views/clockpicker/jquery-clockpicker.min.css" rel="stylesheet"/>
									
									<div class="input-group clockpicker">
									    <input type="text" class="form-control">
									    <span class="input-group-addon">
									        <span class="glyphicon glyphicon-time"></span>
									    </span>
									</div>
									<script type="text/javascript">
									$('.clockpicker').clockpicker({
									    placement: 'top',
									    align: 'left',
									    donetext: 'OK'
									});
									</script>
									
								</div>
							</div>
							
							<div>
								<label class="col-sm-12">Repetir para os dias:</label>
							</div>
							
							<div class="col-md-6" id="sandbox-container">
									<input type="text" class="form-control">
									<script src="/sisaws/resources/views/datepicker/jquery.js"></script>
									<script src="/sisaws/resources/views/multdatepicker/js/bootstrap-datepicker.min.js"></script>
									<script src="/sisaws/resources/views/multdatepicker/locales/bootstrap-datepicker.pt-BR.min.js"></script>
									<link href="/sisaws/resources/views/multdatepicker/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
									<script>
										var date = new Date();
										date.setDate(date.getDate());
										
										$('#sandbox-container input').datepicker({
										    language: "pt-BR",
										    multidate: true,
										    startDate: date
										});
									</script>
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-sm-12">
									<button type="submit" class="btn btn-success" style="border-radius: 12px;">Realizar Agendamento</button>
								</div>
							</div>
				</form>
			</div>
		</div>

	</div>
</div>
<!-- /#wrapper -->
<!-- jQuery -->
<script
	src="/sisaws/resources/views/plugins/bower_components/jquery/dist/jquery.min.js"></script>
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
