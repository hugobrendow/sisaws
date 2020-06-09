<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:import url="../componentes/cabecalho.jsp" />
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Usuários</h4>
			</div>

			<ol class="breadcrumb">
				<li><a href="/sisaws/home">Painel</a></li>
				<li class="active">Usuários</li>
			</ol>

		</div>
		<button onclick="window.location.href='/sisaws/usuario/cadastrar'"
			type="button" class="btn btn-info" style="float: right; border-radius: 12px;">CADASTRAR NOVO USUÁRIO</button>
	</div>

	<div class="row">
		<div class="col-sm-12">
			<div class="white-box">
				<h3 class="box-title">USUARIOS CADASTRADOS</h3>
				<div class="table-responsive">
					<table class="table ">
						<thead>
							<tr>
								<th>ID</th>
								<th>NOME</th>
								<th>LOGIN</th>
								<th>CPF</th>
								<th>GESTOR</th>
								<th>CONTRATO</th>							
							</tr>
							<c:forEach items="${usuarios}" var="usuario">
								<tr>
									<td>${usuario.id}</td>
									<td>${usuario.nome}</td>
									<td>${usuario.login}</td>
									<td>${usuario.cpf}</td>
									<td>${usuario.gestor}</td>
									<td>${usuario.contrato.descricao}</td>
									<td>
										<a href="/sisaws/usuario/editar?codigo=${usuario.id}"><button type="button" class="btn-link glyphicon glyphicon-edit"></button></a>
										<a href="/sisaws/usuario/removerUsuario?codigo=${usuario.id}"><button type="button" class="btn-link glyphicon glyphicon-remove"></button></a>
									</td>
								</tr>
							</c:forEach>
					</table>
					<a href="#">Todos os Usuários</a>
				</div>
			</div>
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