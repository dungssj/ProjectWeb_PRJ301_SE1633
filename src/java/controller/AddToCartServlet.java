/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ProductDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import model.Product;
import model.ProductCart;

/**
 *
 * @author longc
 */
@WebServlet(urlPatterns = "/AddToCartServlet/*")
public class AddToCartServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try ( PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet AddToCartServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet AddToCartServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String actionString = request.getPathInfo();
        System.out.println("Do get cart");
        System.out.println("actionString");
        System.out.println(actionString);
        if (actionString == null) {
            actionString = "/";
        }
        switch (actionString) {
            case "/":
                showCart(request, response);
                break;
//            default:
//                throw new AssertionError();
        }
        return;
    }

    public void showCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
        System.out.println("Show Cart");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("AddToCart.jsp");
        request.setAttribute("cart", cart);
        requestDispatcher.forward(request, response);
        return;
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String actionString = request.getPathInfo();
        System.out.println("actionString");
        System.out.println(actionString);
        switch (actionString) {
            case "/add-to-cart":
                AddToCart(request, response);
                break;
            case "/update-amount":
                udateAmount(request, response);
                break;
            default:
                System.out.println(actionString);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("LandingPage.jsp");
                requestDispatcher.forward(request, response);
                return;
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
    private static void AddToCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int ProductId = Integer.parseInt(request.getParameter("ProductId"));
        System.out.println("Run Add To Cart");
        System.out.println(ProductId);
        ProductDAO dao = new ProductDAO();
        Product product = dao.getProductByID(ProductId);
        HttpSession session = request.getSession();
        ProductCart productCart;
        HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
        if (cart == null) {
            cart = new HashMap<Integer, ProductCart>();
            productCart = new ProductCart(1, product);
            cart.put(ProductId, productCart);
        } else {
            if (cart.containsKey(ProductId)) {
                productCart = cart.get(ProductId);
                productCart.incrementAmount();

            } else {
                productCart = new ProductCart(1, product);
                cart.put(ProductId, productCart);
            }
        }
        session.setAttribute("cart", cart);
//            for (Map.Entry<Integer, ProductCart> entry : cart.entrySet()) {
//            System.out.println(entry.getValue().product.getProductName() + " :So luong" + entry.getValue().amount);
//            
//        }
        response.sendRedirect("/Projectweb_PRJ301_SE1633/AddToCartServlet");
        return;
    }

    public void udateAmount(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int ProductId = Integer.parseInt(request.getParameter("ProductId"));
        int amount = Integer.parseInt(request.getParameter("amount"));
        System.out.println(ProductId);
        System.out.println(amount);
        ProductCart productCart;
        ProductDAO dao = new ProductDAO();
        Product product = dao.getProductByID(ProductId);
        HttpSession session = request.getSession();
        HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
        if (cart == null) {
            cart = new HashMap<Integer, ProductCart>();
            productCart = new ProductCart(amount, product);
            cart.put(ProductId, productCart);
        } else {
            if (cart.containsKey(ProductId)) {
                if(amount == 0){
                    cart.remove(ProductId);
                }else{
                    productCart = cart.get(ProductId);
                productCart.setAmount(amount);
                }
                

            } else {
                productCart = new ProductCart(amount, product);
                cart.put(ProductId, productCart);
            }
        }
        session.setAttribute("cart", cart);
        response.sendRedirect("/Projectweb_PRJ301_SE1633/AddToCartServlet");
        return; 
    }
}
