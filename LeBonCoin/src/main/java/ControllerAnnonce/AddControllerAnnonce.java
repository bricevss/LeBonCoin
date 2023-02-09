package ControllerAnnonce;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.Annonce;
import Services.AnnonceServices;

@WebServlet("/addAnnonce")
public class AddControllerAnnonce extends HttpServlet {
	private static final long serialVersionUID = 1L;

	AnnonceServices service;
	
	public AddControllerAnnonce() {
		super();
		service = new AnnonceServices();
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("CreateAnnonce.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String titre = request.getParameter("txtTitre");
			String date = request.getParameter("txtDate");
			String urlPhoto = request.getParameter("urlPhoto");
			int prix = Integer.parseInt(request.getParameter("prix"));
			String categorie = request.getParameter("categorie");
			String description = request.getParameter("description");
			int id_utilisateur = Integer.parseInt(request.getParameter("idutilisateur"));

			Annonce a = new Annonce(titre, date, urlPhoto, prix, description, categorie, id_utilisateur);
			service.create(a);
			
			request.getRequestDispatcher("showannonce").forward(request, response);
			
		} catch (Exception e) {
			 doGet(request, response);
		}	
		
	}
}
