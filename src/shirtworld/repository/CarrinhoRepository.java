package shirtworld.repository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import shirtworld.database.ConnectionDatabase;
import shirtworld.model.Carrinho;
import shirtworld.model.Produto;
import shirtworld.model.Usuario;

public class CarrinhoRepository {

	public static Carrinho getFilteredCart(Usuario user) {			
		Connection conn = ConnectionDatabase.getConnection();

		try {
			Statement stmt = conn.createStatement();
			String sql = "select p.id,p.nome as nome ,p.preco,p.descricao,sum(p.preco) as preco_total,count(p.id) as quantidade FROM ((carrinho c JOIN carrinho_produto cp ON cp.carrinho_id = c.id and c.user_login='"+user.getLogin()+"') JOIN Produto p ON p.id = cp.produto_id ) GROUP BY p.id  ";

			ResultSet rs = stmt.executeQuery(sql);

			List<Produto> produtos = new ArrayList<>();
			Carrinho carrinho = null;
			Produto produto = null;
			double total = 0;
			while (rs.next()) {
				produto = new Produto(rs.getString("nome"), rs.getFloat("preco_total"), rs.getString("descricao"));
				produto.setId(rs.getInt("id"));
				produto.setQuantidade(rs.getInt("quantidade"));
				carrinho = new Carrinho();
				produtos.add(produto);

				total += rs.getDouble("preco_total");
				carrinho.setPrecoTotal(total);

			}
			if(carrinho == null){
				return null;
			}else
				carrinho.setProdutos(produtos);
			
			return carrinho;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			 e.printStackTrace();
			return null;
		}

	}

}
