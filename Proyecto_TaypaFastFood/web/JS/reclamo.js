function libroreclamaciones(){
	var dia=document.getElementById("dia").value;
	var nombres=document.getElementById("nombres").value;
	var apellidos=document.getElementById("apellidos").value;
	var correo=document.getElementById("correo").value;
	var telefono=document.getElementById("telefono").value;
	var dni=document.getElementById("dni").value;
	var producto=document.getElementById("producto").value;
	var servicio=document.getElementById("servicio").value;
	var descripcion=document.getElementById("descripcion").value;

	var expresion = /\w+@\w+\.+[a-z]/;

	if (dia==="" || nombres==="" || apellidos==="" || correo==="" || telefono==="" || dni==="" || producto==="" || servicio==="" || descripcion===""){
		alert("Todos los campos son obligatorios");
		return false;
	}
	else if (nombres.length>30) {
		alert("El nombre es muy largo");
		return false;
	}
	else if (apellidos.length>50) {
		alert("Los apellidos son muy largos");
		return false;
	}
	else if (correo.length>80) {
		alert("El correo es muy largo");
		return false;
	}
	else if (!expresion.test(correo)) {
		alert("El correo no es válido");
		return false;
	}
	else if (telefono.length>9) {
		alert("El telefono es muy largo");
		return false;
	}
	else if (isNaN(telefono)) {
		alert("El telefono ingresado no es válido");
		return false;
	}
	else if (dni.length>8) {
		alert("El DNI es muy largo");
		return false;
	}
	else if (isNaN(dni)) {
		alert("El DNI ingresado no es válido");
		return false;
	}
	else if (producto.length>30) {
		alert("El nombre de producto ingresado es muy largo");
		return false;
	}
	else if (servicio.length>50) {
		alert("El nombre de servicio ingresado es muy largo");
		return false;
	}
}

