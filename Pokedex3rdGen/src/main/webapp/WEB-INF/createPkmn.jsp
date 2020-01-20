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
<body>
<h2>Create a new or add current Pokemon</h2>
<form action="createPkmn.do" method="POST">
	
	Name: <input type="text" name="name"><br>
	Type: <input type="text" name="type1"><br>
	Type: <input type="text" name="type2"><br>
	Height: <input type="number" step="0.01" name="height"><br>
	Weight: <input type="number" step="0.01" name="weight"><br>
	Ability: <input type="text" name="ability"><br>
	Entry: <input type="text" name="entry"> <br>
	Image: <input type="url" name="image"><br>
	<input type="submit" value="Create Pokemon" class="btn btn-dark">
	
	
</form>
<form action="home.do"><input type="submit" value="Home" class="btn btn-dark"></form>

</body>
<style>
input {
margin: 2px;
padding: 2px;
}

</style>
</html>