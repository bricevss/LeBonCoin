package ControllerUtilisateur;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.UtilisateurServices;

@WebServlet("/deleteutilisateur")
public class DeleteControllerUtilisateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UtilisateurServices service;

    public DeleteControllerUtilisateur() {
        super();
        service = new UtilisateurServices();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In doGet");
		
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			service.delete(id);
		}catch(Exception e) {
		}
		
		request.getRequestDispatcher("showutilisateur").forward(request, response);
	}
}
