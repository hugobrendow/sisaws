<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="../componentes/cabecalho.jsp" />
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Cadastrar Servidor</h4>
			</div>

			<ol class="breadcrumb">
				<li><a href="/sisaws/home">Painel</a></li>
				<li><a href="/sisaws/servidor/listar">Servidores</a></li>
				<li class="active">Cadastrar Servidor</li>
			</ol>
		</div>
	</div>
	<!-- /.row -->				
									
	<div class="container white-box col-sm-12">
		<div>
		<p class="text-success"><strong>${sucesso}</strong></p>
		</div>
		<form action="/sisaws/servidor/cadastrarServidor" method="post">
			<div class="form-group">
			<div class="form-group">
				<div class="col-xs-6">
					<label for="ex3">ID AWS</label> <input
						class="form-control form-control-line" name="idAws" type="text">
				</div>
			</div>
				<div class="col-xs-6">
					<label for="ex3">PREÇO U$</label> <input
						class="form-control form-control-line" name="preco" type="text">
				</div>
			</div>
			<div class="form-group">
				<div class="col-xs-6">
					<br />
					<label for="ex3">NOME</label> <input
						class="form-control form-control-line" name="nome"
						type="text">
				</div>
			</div>
			<div class="form-group">
				<div class="col-xs-4">
					<br />
					<label for="exampleFormControlSelect1">TIPO</label>
					<select class="form-control form-control-line" name="tipo">
						<option value="EC2">EC2</option>
						<option value="RDS">RDS</option>
					</select>
				</div>
			</div>
			<div class="col-xs-12">
				<br />
				<button type="submit" class="btn btn-success" style="border-radius: 12px;">Salvar</button>
			</div>
		</form>
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