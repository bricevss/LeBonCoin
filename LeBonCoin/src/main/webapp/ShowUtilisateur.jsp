<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="Entity.Utilisateur" %>   
<%@ page import="Services.UtilisateurServices" %>    
    
<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	
		<meta charset="ISO-8859-1">
		<title>Show View</title>
	</head>
	<body>
		
			<div class="topnav">
				  <a class="active" href="index.html">Accueil</a>
				  <a href="ShowAnnonce.jsp">Annonces</a>
				  <a href="ShowUtilisateur.jsp">Liste des utilisateurs</a>
				  <a href="">A propos de nous</a>
				  <a href="CreateUtilisateur.jsp">Créer un compte</a>
				  <a href="">Se connecter</a>
			</div>
			
		<h1>Liste des Utilisateurs :</h1>
		
		<table>
			<thead>
				<tr> 
					<th>id Utilisateur</th>
					<th>nom Utilisateur</th>
					<th>nom</th> 
					<th>prenom</th>
					<th>email</th>
					<th>mot de passe</th>
					<th>description</th>
				</tr>
			</thead>
			
			<tbody>
				<% for ( Utilisateur c : new UtilisateurServices().getAll() ) {%>
					<tr>
						<td> <%= c.getId() %> </td>
						<td> <%= c.getNomUtilisateur() %> </td>
						<td> <%= c.getNom() %> </td>
						<td> <%= c.getPrenom() %> </td>
						<td> <%= c.getEmail() %> </td>
						<td> <%= c.getMotDePasse() %> </td>
						<td> <a href='/LeBonCoin/updateutilisateur?id=<%= c.getId() %>'>update</a> </td>
						<td> <a href='/LeBonCoin/deleteutilisateur?id=<%= c.getId() %>'>delete</a> </td>
					</tr>
				<% } %>
			</tbody>
		</table>
		
		<a href='/LeBonCoin/addUtilisateur'>Create</a>
		
	</body>
</html>