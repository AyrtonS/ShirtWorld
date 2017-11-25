package shirtworld.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shirtworld.model.Produto;
import shirtworld.repository.ProdutoRepository;

@WebServlet("/produto")
public class ProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProdutoServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Produto p = new Produto(request.getParameter("nome"), Float.parseFloat(request.getParameter("preco")));
		try {
			ProdutoRepository.inserir(p);

		} catch (Exception e) {
			e.printStackTrace();
		}

		response.getWriter().println(p);
	}

}
