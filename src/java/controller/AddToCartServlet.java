/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;


import dao.CartDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Product;
import model.ProductCart;
import model.User;

/**
 *
 * @author Dung
 */
public class AddToCartServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddToCartServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddToCartServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        CartDAO cartDao = new CartDAO();
        User u = (User) request.getSession().getAttribute("user");
        ArrayList<ProductCart> productCartList = new ArrayList<>();
        productCartList = cartDao.getProductFromCartByUserID(u);
        int totalPrice = 0;
        for (ProductCart productCart : productCartList) {
            totalPrice +=productCart.price;
        }
        request.setAttribute("totalPrice", totalPrice);
        request.setAttribute("productCartList", productCartList);
        request.getRequestDispatcher("AddToCart.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("ProductId"));
        // Get product from dao by ID of product
        ProductDAO productDao = new ProductDAO();
        Product product = productDao.getProductByID(id);
        // Get user id by session
        User u = (User) request.getSession().getAttribute("user");
        // Insert into database of table cart
        CartDAO cartDao = new CartDAO();
        // Check if product in cart is already exist then increase quantity
        if(cartDao.checkProductExist(product, u)) {
            int quantity = cartDao.getQuantityProduct(product, u);
            quantity++;
            cartDao.updateQuantityAndPrice(product, u, quantity);
        } else {
            cartDao.insertToCart(product, u, 1);
        }
        ArrayList<ProductCart> productCartList = new ArrayList<>();
        productCartList = cartDao.getProductFromCartByUserID(u);
        int totalPrice = 0;
        for (ProductCart productCart : productCartList) {
            totalPrice +=productCart.price;
        }
        request.setAttribute("totalPrice", totalPrice);
        request.setAttribute("productCartList", productCartList);
        request.getRequestDispatcher("AddToCart.jsp").forward(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
