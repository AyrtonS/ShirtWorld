package shirtworld.listeners;

import java.util.Random;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import shirtworld.database.ConnectionDatabase;
import shirtworld.model.Carrinho;
import shirtworld.model.Usuario;
import shirtworld.repository.UserRepository;

/**
 * Application Lifecycle Listener implementation class DatabaseListener
 *
 */
@WebListener
public class DatabaseListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public DatabaseListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    	
    	ConnectionDatabase.closeConnection();
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    	
    	ConnectionDatabase.getConnection();
    	System.out.println(ConnectionDatabase.status);
    	
    	Usuario user = new Usuario("admin", "admin");
    	user.setAdmin(true);
    	Random random = new Random();   
    	
    	user.setId(random.nextInt(1000));
    	
    	if(UserRepository.checkUser(user) == null){
    		Carrinho carrinho = UserRepository.getNewCart(user);
    		UserRepository.insertUser(user,carrinho);
    		System.out.println("Admin INSERIDO");
    	}
    	

    	
    	
    }
	
}
