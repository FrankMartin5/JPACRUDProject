<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Pokemon</title>
<link rel="stylesheet" href="../css/master.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body style="text-align: center;">
<h3>${pokemon.name}</h3>
	<img src="${pokemon.image}" alt="Pokemon Image" width="150px" height="150px">
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
	</c:if>
	<form action="home.do"><input type="submit" value="Home" class="btn btn-dark"></form>

</body>
<style>
input {
margin: 2px;
padding: 2px;
}

</style>
</html>