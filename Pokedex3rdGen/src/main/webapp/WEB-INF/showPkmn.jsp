<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pokedex Entries</title>
</head>
<body>

	<h3>${pokemon.name}</h3>
	<img src="${pokemon.image}" alt="Pokemon Image">
	<c:if test="${not empty pokemon}">
		<table border="1">
			<tr>
				<td>${pokemon.type1}</td>
			</tr>
			<tr>
				<td>${pokemon.type2}</td>
			</tr>
			<tr>
				<td>${pokemon.height}</td>
			</tr>
			<tr>
				<td>${pokemon.weight}</td>
			</tr>
			<tr>
				<td>${pokemon.ability}</td>
			</tr>
			<tr>
				<td>${pokemon.entry}</td>
			</tr>
		</table>
		<form action="deletePkmn.do" method="POST" id="button">
		<input type="hidden" value="${pokemon.id}" name="id">
		<input type="submit" value="Delete">
		</form>
		<form action="sendToUpdatePkmn.do">
		<input type="hidden" value="${pokemon.id}" name="id">
		<input type="submit" value="Update">
		<!-- <a href="updatePkmn.jsp" id="button">Update</a> -->
		</form>
		<a href="home.jsp" id="button">Home</a>
	</c:if>
</body>
</html>
