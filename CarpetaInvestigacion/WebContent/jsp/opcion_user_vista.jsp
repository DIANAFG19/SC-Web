<!-- AUTOR: Ing. Flores Garia Diana Laura. -->
<!-- Fecha de Inicio: 10 de Octubre de 2018. -->
<!-- �ltima modificaci�n: 15/10/2018. -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="tag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="<c:url value="/recursos/css/myCSS/mybase.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/recursos/css/bootstrap/bootstrap.min.css"/>" />
<script src="<c:url value="/recursos/js/bootstrap/jquery.min.js"/>"></script>
<script src="<c:url value="/recursos/js/bootstrap/bootstrap.min.js"/>"></script>
<script src="<c:url value="/recursos/js/myJS/validarUsuario.js"/>"></script>
<meta http-equiv="Content-Type" name="viewport"
	content="text/html; charset=ISO-8859-1, width=device-width, initial-scale=1">
<title>Opci�n</title>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="navbar-brand">
					<img src="<c:url value="/recursos/img/PGJCDMX.png"/>"
						class="centrarVertical" width="40px" height="auto" />
				</div>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav pull-right">
					<%
						HttpSession sesion = request.getSession();
						String usuario;
						String nivel;
						//Atributos de Login.jsp
						if (sesion.getAttribute("user") != null && sesion.getAttribute("level") == "2") {
							usuario = sesion.getAttribute("user").toString();
							nivel = sesion.getAttribute("level").toString();

							out.print("<li><a href='login?cerrar=true'>Cerrar sesi�n (" + usuario + ")</a><li>");
						} else {
							out.print("<script>location.replace('login');</script>");
						}
					%>
				</ul>
			</div>
		</div>
		</nav>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
					<br><br><br><br><br><br>
					<center>
						<a class="btn btn-primary btn-lg sizeButton" href="registrar_user">Registrar</a>
					</center>
					<br><br><br>
					<center>
						<a class="btn btn-default btn-lg sizeButton" href="tramitar_user">Tramitar</a>
					</center>
					<br><br><br>
					<center>
						<a class="btn btn-success btn-lg sizeButton" href="reportes_user">Reportes
							de hoy y 3 d�as atr�s</a>
					</center>
					<br><br><br><br><br><br><br>
				</div>
			</div>
		</div>
		<footer>
		<div
			class="col-lg-12 col-md-12 col-sm-12 col-xs-12 estiloFooter centrarVertical">
			<br>
			<h4>Procuradur�a General de Justicia de la CDMX. Fiscal�a
				Desconcentrada de Investigaci�n en Gustavo A. Madero.</h4>
			<h6>
				Sistema elaborado por <a href="mailto:diana1310fg@gmail.com">Ing. Diana Laura Flores Garcia</a>.
			</h6>
		</div>
		</footer>
	</div>

</body>
</html>