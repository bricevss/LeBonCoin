package ControllerUtilisateur;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Entity.Utilisateur;
import Services.UtilisateurServices;


@WebServlet("/addUtilisateur")
public class AddControllerUtilisateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UtilisateurServices service;
    public AddControllerUtilisateur() {
        super();
        service = new UtilisateurServices();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("CreateUtilisateur.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String nomUtilisateur = request.getParameter("nomUtilisateur");
			String nom = request.getParameter("txtNom");
			String prenom = request.getParameter("txtPrenom");
			String email = request.getParameter("email");
			String motDePasse = request.getParameter("motDePasse");
			
			Utilisateur u = new Utilisateur(nomUtilisateur, nom, prenom, email, motDePasse );
			service.create(u);
			
			request.getRequestDispatcher("showannonce").forward(request, response);
		}catch(Exception e) {
			doGet(request, response);
		}
	}
}