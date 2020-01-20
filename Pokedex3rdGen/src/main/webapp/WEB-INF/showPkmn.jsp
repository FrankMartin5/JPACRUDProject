<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pokedex Entries</title>
<link rel="stylesheet" href="../css/master.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body style="text-align: center;">
	<h3>${pokemon.name}</h3>
	<img src="${pokemon.image}" alt="Pokemon Image" width="150px" height="150px">
	<c:if test="${not empty pokemon}">
		<table border="1" >
			<tr>
				<td>Type: ${pokemon.type1}</td>
			</tr>
			<tr>
				<td>Type: ${pokemon.type2}</td>
			</tr>
			<tr>
				<td>Height: ${pokemon.height} m</td>
			</tr>
			<tr>
				<td>Weight: ${pokemon.weight} kg</td>
			</tr>
			<tr>
				<td>Ability: ${pokemon.ability}</td>
			</tr>
			<tr>
				<td>${pokemon.entry}</td>
			</tr>
		</table>
		<form action="deletePkmn.do" method="POST" id="button">
		<input type="hidden" value="${pokemon.id}" name="id">
		<input type="submit" value="Delete" class="btn btn-dark">
		</form>
		<form action="sendToUpdatePkmn.do">
		<input type="hidden" value="${pokemon.id}" name="id">
		<input type="submit" value="Update" class="btn btn-dark">
		<!-- <a href="updatePkmn.jsp" id="button">Update</a> -->
		</form>
		<form action="home.do"><input type="submit" value="Home" class="btn btn-dark"></form>
	</c:if>
</body>
<style>
input {
margin: 2px;
padding: 2px;
}

</style>
</html>

