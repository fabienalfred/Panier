package panier.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import panier.metier.Panier;

/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/PanierServlet")
public class PanierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Panier panier = (Panier) session.getAttribute("panier");
		if(panier==null){
			panier = new Panier();
			session.setAttribute("panier", panier);
		}
		
		String page = "";
		switch (request.getParameter("action")) {
			case "com":
				add(panier, request.getParameter("art"));
				page = "/index.jsp";
				break;
			case "show":
				page = "/panier.jsp";
				break;
			default:
				break;
		}
		
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher(page);
		rd.forward(request, response);
	}

	private void add(Panier panier, String article) {
		panier.add(article);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
