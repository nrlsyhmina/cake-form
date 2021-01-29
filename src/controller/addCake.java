package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CakeDAO;
import model.Cake;

/**
 * Servlet implementation class addCake
 */
@WebServlet("/addCake")
public class addCake extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CakeDAO dao;
   
    public addCake() {
        super();
        dao = new CakeDAO();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cake c = new Cake();
		
		c.setCk_name(request.getParameter("ck_name"));
		c.setCk_flavour(request.getParameter("ck_flavour"));
		c.setCk_price(Float.parseFloat(request.getParameter("ck_price")));
		c.setCk_quantity(Integer.parseInt(request.getParameter("ck_quantity")));
		dao.addOrder(c);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("list-cake.jsp");
		dispatcher.forward(request, response);
	}

}
