package shirtworld.listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.ConnectionEvent;

import shirtworld.database.ConnectionDatabase;

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
         ConnectionDatabase.getConnection(); 
         }
	
}
