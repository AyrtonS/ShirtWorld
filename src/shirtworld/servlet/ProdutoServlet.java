package shirtworld.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shirtworld.model.Produto;
import shirtworld.repository.ProdutoRepository;

@WebServlet("/Produto")
public class ProdutoServlet<T extends Comparable<T>> extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProdutoServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		Float preco = Float.parseFloat(request.getParameter("preco"));
		String descricao = request.getParameter("descricao");

		Produto produto = new Produto(nome, preco, descricao);
		
		try {
			boolean responseFromInsert = ProdutoRepository.inserir(produto);
			request.setAttribute("message", responseFromInsert);
			request.getRequestDispatcher("/admin").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

//		request.getRequestDispatcher("/admin").forward(request, response);
	}

}
