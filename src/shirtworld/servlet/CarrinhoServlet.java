package shirtworld.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shirtworld.model.Carrinho;
import shirtworld.model.Produto;
import shirtworld.model.Usuario;
import shirtworld.repository.ProdutoRepository;
import shirtworld.repository.UserRepository;

/**
 * Servlet implementation class CarrinhoServlet
 */
@WebServlet("/carrinho")
public class CarrinhoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarrinhoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		float preco = Float.parseFloat(request.getParameter("preco"));
		String descricao = request.getParameter("descricao");
		int idCarrinho = Integer.parseInt(request.getParameter("idCart"));
		int idProduto = Integer.parseInt(request.getParameter("idProduto"));
		
		System.out.println("O ID É:"+idProduto);
		
		Produto produto = new Produto(nome, preco, descricao);
		produto.setId(idProduto);
		
		Usuario user = (Usuario) request.getSession().getAttribute("usuario");
		
		Carrinho carrinho = UserRepository.getCarrinho(user);
		if(carrinho!=null){
			ProdutoRepository.inserirProdutoEmCarrinho(produto, carrinho);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
