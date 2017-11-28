package shirtworld.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shirtworld.model.Carrinho;
import shirtworld.model.Usuario;
import shirtworld.repository.UserRepository;

/**
 * Servlet implementation class CadastroServlet
 */
@WebServlet("/cadastro")
public class CadastroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroServlet() {
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
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String email = request.getParameter("email");
		
		Usuario usuario = new Usuario();
		usuario.setLogin(login);
		usuario.setSenha(senha);
		usuario.setEmail(email);
		usuario.setAdmin(false);
		
		if(UserRepository.checkUser(usuario)==null){
			Carrinho carrinho = UserRepository.getNewCart(usuario);
			UserRepository.insertUser(usuario, carrinho);
			request.getSession().setAttribute("usuario", usuario);
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}else{
			request.getSession().setAttribute("errMessage","Sentimos pelo inconveniente mas o usuário escolhido ja existe!");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		
		
		
	}

}
