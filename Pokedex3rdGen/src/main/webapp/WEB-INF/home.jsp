<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pokedex</title>
<link rel="stylesheet" href="../css/master.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<main id="container-fluid">
<h1>Pokedex App</h1>
<form action="getPkmn.do" method="GET">
	<h4>Pokedex Number</h4> <input type="text" name="pid" /> <input type="submit" value="Find Pokemon" class="btn btn-dark"/><br>
</form><br>

<form action="getPkmnByName.do" method="GET">
	<h4>Pokemon Name</h4><input type="text" name="name" /> <input type="submit" value="Find Pokemon" class="btn btn-dark"/><br>
</form><br>
<form action="newPkmn.do">
<h4>Create Pokemon</h4><input type="submit" value="Create Pokemon" class="btn btn-dark">
</form>
</main>


</body>
</html>

