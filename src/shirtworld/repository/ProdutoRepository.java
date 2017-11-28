package shirtworld.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shirtworld.database.ConnectionDatabase;
import shirtworld.model.Carrinho;
import shirtworld.model.Produto;

public class ProdutoRepository{

	
	public static boolean inserir(Produto produto) {

		String sql = "insert into Produto" + " (nome,preco,descricao)" + " values ('" + produto.getNome() + "'," + produto.getPreco() + ",'"+produto.getDescricao()+"');";
		try {
			ConnectionDatabase.executeInsert(sql);
			
			
			System.out.println("Gravado!");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		
		
	}

	public static boolean inserirProdutoEmCarrinho(Produto produto,Carrinho carrinho	) {

		String sql = "insert into Produto" + " (nome,preco,descricao)" + " values ('" + produto.getNome() + "'," + produto.getPreco() + ",'"+produto.getDescricao()+"');";
		try {
			ConnectionDatabase.executeInsert(sql);
			String sqlcart = "insert into carrinho_produto(carrinho_id,produto_id) "
					+ "values ("+carrinho.getId()+","+produto.getId()+");";
			
			ConnectionDatabase.executeInsert(sqlcart);
			
			System.out.println("Gravado!"+produto.getId());
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		
		
	}

	@SuppressWarnings("unchecked")
	public static List<Produto> read() {
			
			String sql = "SELECT * FROM Produto";
			try {
				ResultSet rs = ConnectionDatabase.executeQuery(sql);
				List<Produto> produtos = new ArrayList<Produto>();
				Produto produto;
				while(rs.next()){
					produto = new Produto(rs.getString("nome"), rs.getFloat("preco"),rs.getString("descricao"));
					produto.setId(rs.getInt("id"));
				
					
					produtos.add(produto);
				}
				
				return produtos;
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				return null;
				
			}
			
	}

	public static Produto readOnlyOne(Produto produto) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public static void update(Produto produto) {
	
		String sql = "UPDATE produtos SET nome = "+ produto.getNome() + "and preco = "+produto.getPreco() + "WHERE id ="+produto.getId(); 
		try {
			ConnectionDatabase.executeUpdate(sql);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	public static void delete(Produto produto) {
				
	}
}
