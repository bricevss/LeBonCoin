<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Entity.Annonce" %>   
<%@ page import="Services.AnnonceServices" %>    
    
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
    
        <h1>Liste des annonces :</h1>
        
        <table>
            <thead>
                <tr> 
               	    <th>Photos</th>
                    <th>Titre</th>
                    <th>Catégorie</th>
<!--                <th>id_utilisateur</th>  -->
                    <th>Date de publication</th>               
                    <th>Prix</th>
                    <th>Description</th>
                </tr>
            </thead>
            <tbody>
                <% for ( Annonce c : new AnnonceServices().getAll() ) {%>
                    <tr>               
                   	    <td> <img src = "<%= c.getPhotos() %>"> </td>
                        <td> <%= c.getTitre() %> </td>
                        <td> <%= c.getCategorie() %> </td>
<%--                         <td> <%= c.getId_utilisateur() %> </td> --%>
                        <td> <%= c.getDatePublication() %> </td>    
                        <td> <%= c.getPrix() %> </td>
                        <td> <%= c.getDescription() %> </td>
                        <td> <a href='/LeBonCoin/updateannonce?id=<%= c.getId() %>'><button id="mybutton">Mettre à jour</button></a> </td>
                        <td> <a href='/LeBonCoin/deleteannonce?id=<%= c.getId() %>'><button id="mybutton">Supprimer</button></a> </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
        
        <br>
        
       <a href='/LeBonCoin/addAnnonce'><button id="mybutton">Déposer une annonce</button>
       </a>
        
    </body>
</html>