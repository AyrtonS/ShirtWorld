package shirtworld.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shirtworld.model.Usuario;
import shirtworld.repository.UserRepository;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		Usuario user = new Usuario(login,password);
		
		System.out.println( request.getParameter("login")+ " | " + request.getParameter("password"));
		
		Usuario userReturned = UserRepository.checkUser(user);
		if(userReturned != null){
			request.getSession().setAttribute("usuario", userReturned);
			if(userReturned.isAdmin())
				request.getRequestDispatcher("/admin").forward(request,response);
			else
				request.getRequestDispatcher("/index.jsp").forward(request,response);
		}
		
		
		
		
		
	}

}
