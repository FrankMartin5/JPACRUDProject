<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Pokemon</title>
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
	</c:if>

</body>
</html>