package shirtworld.repository;

import java.sql.SQLException;
import shirtworld.database.ConnectionDatabase;
import shirtworld.model.Produto;

public class ProdutoRepository {

	public static void inserir(Produto p) throws SQLException {

		String sql = "insert into Produto" + " (nome,preco)" + " values (" + p.getNome() + "," + p.getPreco() + ");";
		ConnectionDatabase.executeInsert(sql);

		System.out.println("Gravado!");

	}
}
