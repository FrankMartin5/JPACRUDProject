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
	
	Name: <input type="text" value="${pkInfo.name}" name="name"><br>
	Type: <input type="text" value="${pkInfo.name}" name="type1"><br>
	Type: <input type="text" value="${pkInfo.name}" name="type2"><br>
	Height: <input type="number" step="0.01" value="${pkInfo.name}" name="height"><br>
	Weight: <input type="number" step="0.01" value="${pkInfo.name}" name="weight"><br>
	Ability: <input type="text" name="ability" value="${pkInfo.name}"><br>
	Entry: <input type="text" name="entry" value="${pkInfo.name}"> <br>
	Image: <input type="url" name="image" value="${pkInfo.name}"><br>
	<input type="submit" value="Update Pokemon">
	
	
</form>


</body>
</html>