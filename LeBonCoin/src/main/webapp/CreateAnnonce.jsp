<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />

<meta charset="ISO-8859-1">
<title>Create View</title>
</head>
<body>
			<div class="topnav">
				  <a class="active" href="index.html">Accueil</a>
				  <a href="ShowAnnonce.jsp">Annonces</a>
				  <a href="ShowUtilisateur.jsp">Liste des utilisateurs</a>
				  <a href="">A propos de nous</a>
				  <a href="CreateUtilisateur.jsp">Cr�er un compte</a>
				  <a href="">Se connecter</a>
			</div>
	<h1>Create</h1>
	<form action="/LeBonCoin/addAnnonce" method="post">
	
	
		<label for='txtTitre'>titre</label>
		<input type='text' name='txtTitre'> <br/>
		
		<label>categories</label>
   			<select name = "categorie">
	   			<option value="immobilier">Immobilier</option>
			   	<option value="voiture">Voiture</option>
			   	<option value="divers">Divers</option>
		   	</select>
		
		<br/>
			
		<label for='txtDate'>Date</label>
		<input type='date' name='txtDate'> <br/>
		
		<label for='urlPhoto'>Photo</label>
		<input type='text' name='urlPhoto'> <br/>
		
		<label for='prix'>Prix</label>
		<input type='number' name='prix'> <br/>
		
		<label for='description'>Description</label>
		<input type='text' name='description'> <br/>
		
		<label for='idutilisateur'>id utilisateur</label>
		<input type='number' name='idutilisateur'> <br/>
		
		<input type='submit' value='Valider'>
	</form>
	
</body>
</html>