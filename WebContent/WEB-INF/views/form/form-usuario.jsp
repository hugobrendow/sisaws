<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="../componentes/cabecalho.jsp" />
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Cadastrar Usu�rio</h4>
			</div>

			<ol class="breadcrumb">
				<li><a href="/sisaws/home">Painel</a></li>
				<li><a href="/sisaws/usuario/listar">Usu�rios</a></li>
				<li class="active">Cadastrar Usu�rio</li>
			</ol>
		</div>
	</div>
	<div class="container white-box col-sm-12">
		<form action="/sisaws/usuario/cadastrarUsuario" method="post">
			<div class="form-group">
				<div class="col-xs-6">
					<label for="ex3">NOME</label> <input
						class="form-control form-control-line" name="nome" type="text">
				</div>
			</div>

			<div class="form-group">
				<div class="col-xs-2">
					<label for="ex3">CPF</label> <input
						class="form-control form-control-line" name="cpf" type="text">
				</div>
			</div>

			<div class="form-group">
				<div class="col-xs-4 ">
					<label for="ex3">GESTOR</label> <input
						class="form-control form-control-line" name="gestor" type="text">
				</div>
			</div>
			<div class="form-group">
				<div class="col-xs-4 ">
					<br />
					<label for="ex3">USUARIO</label> <input
						class="form-control form-control-line" name="login" type="text">
				</div>
			</div>
			<div class="form-group">
				<div class="col-xs-4 ">
					<br />
					<label for="ex3">SENHA</label> <input
						class="form-control form-control-line" name="password"
						type="password">
				</div>
			</div>
			<div class="form-group">
				<div class="col-xs-4">
					<br />
					<label for="exampleFormControlSelect1">Selecione o Contrato</label>
					<select class="form-control form-control-line" name="contratoId" id="contratoId">
						<c:forEach items="${contratos}" var="contrato">
							<option value="${contrato.id}">${contrato.descricao}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="col-xs-12">
				<br />
				<button type="submit" class="btn btn-success" style="border-radius: 12px;">Salvar</button>
			</div>
		</form>
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