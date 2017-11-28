package shirtworld.view.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import shirtworld.model.Usuario;

@WebFilter("/admin/*")
public class AdminFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpReq = (HttpServletRequest)request;
		if(httpReq.getSession().getAttribute("usuario") == null)
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		else{
			Usuario user = (Usuario) httpReq.getSession().getAttribute("usuario");
			if(user.isAdmin())
				chain.doFilter(request, response);
			else{
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}
		} 
			
	}

	@Override
	public void destroy() {
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}

}
