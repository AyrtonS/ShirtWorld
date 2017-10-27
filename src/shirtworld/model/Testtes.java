package shirtworld.model;

import shirtworld.database.ConnectionDatabase;

public class Testtes {

	public static void main(String[] args) {
		ConnectionDatabase cb = new ConnectionDatabase();
		cb.getConnection();
	}

}
