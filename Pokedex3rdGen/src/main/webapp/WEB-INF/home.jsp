<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3rd Gen Pokedex</title>
</head>
<body>

<h1>Pokedex App</h1>
<form action="getPkmn.do" method="GET">
	Pokemon ID: <input type="text" name="pid" /> <input type="submit" value="Show Pokemon"/><br>
</form><br>
<form action="getPkmnByName.do" method="GET">
	Pokemon Name: <input type="text" name="pName" /> <input type="submit" value="Show Pokemon"/><br>
</form><br>
<form>
<a href="createPkmn.jsp">Create a Pokemon</a>
</form>

</body>
</html>

<!-- action="getPkmnByName.do" name="pName" -->