<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />

<meta charset="ISO-8859-1">
<title>Create Utilisateur</title>
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
			
<!-- 		<h1>Sign-in !</h1> -->
		
<!-- 			<form action="/LeBonCoin/addUtilisateur" method="post"> -->
<!-- 				<label for='nomUtilisateur'>nom Utilisateur : </label> -->
<!-- 				<input type='text' name='nomUtilisateur'> <br/> -->
				
<!-- 				<label for='txtNom'>nom : </label> -->
<!-- 				<input type='text' name='txtNom'> <br/> -->
				
<!-- 				<label for='txtPrenom'>Prénom: </label> -->
<!-- 				<input type='text' name='txtPrenom'> <br/> -->
				
<!-- 				<label for='email'>Email : </label> -->
<!-- 				<input type='text' name='email'> <br/> -->
				
<!-- 				<label for='motDePasse'>mot de passe: </label> -->
<!-- 				<input type='password' name='motDePasse'> <br/> -->
				
<!-- 				<input type='submit' value='Valider'> -->
<!-- 			</form> -->
			
			<div class="form_wrapper">
			  <div class="form_container">
			    <div class="title_container">
			      <h2>Création de compte</h2>
			    </div>
			    <div class="row clearfix">
			      <div class="">
			        <form action="/LeBonCoin/addUtilisateur" method="post">
			        
			          <div class="row clearfix">
			            <div class="col_half">
			              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
			                <input type="text" name="txtPrenom" placeholder="Prénom" />
			              </div>
			            </div>
			            <div class="col_half">
			              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
			                <input type="text" name="txtNom" placeholder="Nom de famille" required />
			              </div>
			            </div>
			          </div>
			          
			          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
			            <input type="text" name="nomUtilisateur" placeholder="Nom d'utilisateur" required />
			          </div>
			        
			          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
			            <input type="email" name="email" placeholder="Email" required />
			          </div>
			          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
			            <input type="password" name="motDePasse" placeholder="Mot de passe" required />
			          </div>
			          <input class="button" type="submit" value="Inscription" />
			        </form>
			      </div>
			    </div>
			  </div>
		</div>
			
	</body>
</html>