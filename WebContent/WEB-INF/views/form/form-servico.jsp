<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="../componentes/cabecalho.jsp" />
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Cadastrar Serviço</h4>
			</div>

			<ol class="breadcrumb">
				<li><a href="/sisaws/home">Painel</a></li>
				<li><a href="/sisaws/servico/listar">Serviços</a></li>
				<li class="active">Cadastrar Serviço</li>
			</ol>
		</div>
	</div>
	<div class="container white-box col-sm-12">
		<form action="/sisaws/servico/cadastrarServico" method="post">
			<div class="form-group">
				<div class="col-xs-8 ">
					<br /> <label for="ex3">NOME</label> <input
						class="form-control form-control-line" name="nome" type="text">
				</div>
			</div>

			<div class="form-group">
				<div class="col-xs-8 ">
					<br /> 
					<label>SERVIDORES</label>
					<select class="form-control form-control-line"
						name="servidorId" id="servidorId" multiple>
						<c:forEach items="${servidores}" var="servidor">
							<option value="${servidor.id}">${servidor.nome}</option>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="form-group">
				<div class="col-xs-8 ">
					<br /> <label>BANCOS</label> <select
						class="form-control form-control-line" name="servidorId"
						id="servidorId" multiple>
						<c:forEach items="${bancos}" var="banco">
							<option value="${banco.id}">${banco.nome}</option>
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