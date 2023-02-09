package ControllerAnnonce;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.AnnonceServices;

@WebServlet("/deleteannonce")
public class DeleteControllerAnnonce extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	AnnonceServices service;

       
    public DeleteControllerAnnonce() {
        super();
        service = new AnnonceServices();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		int id = Integer.parseInt( request.getParameter("id"));
		service.delete(id);
		} catch (Exception e) {
		// TODO: handle exception
		}
			request.getRequestDispatcher("showannonce").forward(request, response);
			}

}
