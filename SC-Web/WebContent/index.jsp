<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@page session="true"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" name="viewport" content="text/html; charset=ISO-8859-1, width=device-width, initial-scale=1">
<title>Login</title>
</head>
<body>

	

<div class="container-fluid">

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
    </div>
  </div>
</nav>

<div class="container">	
 <div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
	<center> 
	<font size="3" style="color: #2e5fad">SUBPROCURADURÍA DE AVERIGUACIONES PREVIAS DESCONCENTRADAS<br>	
	INFORME DIARIO DE CARPETAS DE INVESTIGACION CON DETENIDO</font>
<br><br>
<img src="<c:url value="/recursos/img/PGJCDMX.png"/>" class="centrarVertical" width="45px" height="auto"/>
</center>
	
	<br>
	<center>
	<div id="formComentario" class="panel panel-default panel-success fondoOpinionForm" >
	<div class="panel-body" >
	<form action="login" method="POST">
		<h3>Usuario</h3>
		<input name="txtUsuario" class="form-control" placeholder="User"/>
	
		<h3>Contraseña</h3>
		<input type="password" name="txtContra" class="form-control" placeholder="Password"/>
		
		<br><br>
		
		<button name="btnIngresar" class="btn btn-warning">Ingresar</button>	
	</form>

	
	</div>
	</div>
	</center>
	<br><br><br><br><br><br>
	</div>
 </div>
 
</div>
	
	<footer>	
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 estiloFooter centrarVertical">
		<br>
		 <h4>Procuraduría General de Justicia de la CDMX. Fiscalía Desconcentrada de Investigación en Gustavo A. Madero.</h4>
		 <h6>Sistema elaborado por <a href="mailto:rod.lino.14@gmail.com">Rodrigo Lino Osorio</a>.</h6>
		</div>	
	</footer>
</div>

</body>
</html>