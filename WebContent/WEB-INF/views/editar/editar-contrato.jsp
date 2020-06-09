<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<c:import url="../componentes/cabecalho.jsp" />
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Editar Contrato</h4>
			</div>

			<ol class="breadcrumb">
				<li><a href="/sisaws/home">Painel</a></li>
				<li><a href="/sisaws/contrato/listar">Contratos</a></li>
				<li class="active">Editar Contrato</li>
			</ol>
		</div>
	</div>
	<div class="container white-box">
		<form action="/sisaws/contrato/editarContrato" method="post">
		<input type="hidden" value="${contrato.id}" name="id"></input>
			<div class="form-group">
				<div class="col-xs-12">
					<label for="ex3">DESCRI��O</label> <input
						class="form-control form-control-line" name="descricao" type="text" value="${contrato.descricao}">
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-xs-8 ">
					<br />
					<label for="ex3">CIDADE</label> <input
						class="form-control form-control-line" name="cidade" type="text" value="${contrato.cidade}">
				</div>
			</div>
			<div class="form-group">
				<div class="col-xs-4 ">
					<br />
					<label for="ex3">ESTADO</label> <input
						class="form-control form-control-line" name="estado"
						type="text" value="${contrato.estado}">
				</div>
			</div>
			<div class="col-xs-12">
				<br />
				<button type="submit" class="btn btn-success">Salvar</button>
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