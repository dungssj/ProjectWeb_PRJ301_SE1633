/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Admin
 */
public class EditServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("update") != null) {
            String name = request.getParameter("name");
            int amount = Integer.parseInt(request.getParameter("amount"));
            int price = Integer.parseInt(request.getParameter("price"));
            int discount = Integer.parseInt(request.getParameter("discount"));

            request.setAttribute("name", name);
            request.setAttribute("amount", amount);
            request.setAttribute("price", price);
            request.setAttribute("discount", discount);      
            request.getRequestDispatcher("EditController");
        }
    }

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
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        {
            res.setContentType("text/html");

            out.println("<html>");
            out.println("<head>");
            out.println("<title>");
            out.println("Update Page");
            out.println("</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<table>");
            Connection connection = null;
            Statement statement = null;
            ResultSet resultset = null;
            try {
                statement = connection.createStatement();
                resultset = statement.executeQuery("select * from Product");
                while (resultset.next()) {
                    out.println("<form action='EditServlet' method='post'>");
                    out.println("<tr>");
                    out.println("<td>");
                    out.println("Product Name: <input type='text' name='name' value='" + resultset.getString(1) + "' / >");
                    out.println("<td>");
                    out.println("Amount: <input type='text' name='amount' value='" + resultset.getInt(2) + "' / >");
                    out.println("<td>");
                    out.println("Price: <input type='text' name='price' value='" + resultset.getInt(3) + "' / >");
                    out.println("<td>");
                    out.println("Image: <input type='file' name='image' value='" + resultset.getString(4) + "' / >");
                    out.println("<td>");
                    out.println("Discount: <input type='text' name='discount' value='" + resultset.getInt(5) + "' / >");
                    out.println("<td>");
                    out.println("Date Add: <input type='date' name='date_add' value='" + resultset.getDate(6) + "' / >");
                    out.println("<input type='submit' value='Update' / >");
                    out.println("</form>");
                }
            } catch (NumberFormatException ce) {
                out.println("Error " + ce);
            } catch (SQLException se) {
                out.println("Error " + se);
            } finally {
                try {
                    connection.close();
                } catch (Exception e) {
                }
            }
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        }
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
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>");
        out.println("Select Page");
        out.println("</title>");
        out.println("</head>");
        out.println("<body>");
        Connection connection = null;
        Statement statement = null;

        String name = req.getParameter("name");
        int amount = Integer.parseInt(req.getParameter("amount"));
        int price = Integer.parseInt(req.getParameter("price"));
        String image = req.getParameter("image");
        int discount = Integer.parseInt(req.getParameter("discount"));
        String date_add = req.getParameter("date_add");

        try {
            statement = connection.createStatement();

            String query = "update Product set name='" + name + "', amount='" + amount + "', price='" + price + "', image='" + image + "', discount='" + discount + "'  where name='" + name + "'";

            int result = statement.executeUpdate(query);
            out.println(result + " row(s) updated.");
        } catch (NumberFormatException ce) {
            out.println("Error " + ce);
        } catch (SQLException se) {
            out.println("Error " + se);
        } finally {
            try {
                connection.close();
            } catch (Exception e) {
            }
        }
        out.println("</body>");
        out.println("</html>");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
