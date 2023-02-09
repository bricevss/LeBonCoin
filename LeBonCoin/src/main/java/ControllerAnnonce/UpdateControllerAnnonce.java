package ControllerAnnonce;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.Annonce;
import Services.AnnonceServices;


@WebServlet("/updateannonce")
public class UpdateControllerAnnonce extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	AnnonceServices service;

    public UpdateControllerAnnonce() {
        super();
        service = new AnnonceServices();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = -1;
		
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} 
		
		catch (Exception e) {
			
		}
		
		Annonce a = service.getById(id);		
		request.setAttribute("annonce", a);		
		request.getRequestDispatcher("UpdateAnnonce.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			int id = Integer.parseInt(request.getParameter("id"));
			String titre = request.getParameter("txtTitre");
			String photos = request.getParameter("urlPhoto");
			int prix = Integer.parseInt(request.getParameter("prix"));
			String description = request.getParameter("description");
			String categorie = request.getParameter("categorie");
			
			Annonce a = new Annonce(id, titre, photos, prix, description, categorie);
			service.update(a);
						
		} 

		catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/showannonce").forward(request, response);
		
	}

}
