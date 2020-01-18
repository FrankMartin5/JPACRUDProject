<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Pokemon</title>
</head>
<body>
<h2>Update Pokemon</h2>
<form action="updatePkmn.do" method="POST">
<input type="hidden" value="${pokemon.id}" name="id">
	
	Name: <input type="text" value="${pokemon.name}" name="name"><br>
	Type: <input type="text" value="${pokemon.type1}" name="type1"><br>
	Type: <input type="text" value="${pokemon.type2}" name="type2"><br>
	Height: <input type="number" step="0.01" value="${pokemon.height}" name="height"><br>
	Weight: <input type="number" step="0.01" value="${pokemon.weight}" name="weight"><br>
	Ability: <input type="text" name="ability" value="${pokemon.ability}"><br>
	Entry: <input type="text" name="entry" value="${pokemon.entry}"> <br>
	Image: <input type="url" name="image" value="${pokemon.image}"><br>
	<input type="submit" value="Update Pokemon">
	
	
</form>


</body>
</html>