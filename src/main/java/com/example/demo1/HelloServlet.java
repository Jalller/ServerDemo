package com.example.demo1;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String fnavn = request.getParameter("fname");
        String enavn = request.getParameter("lname");
        String password = request.getParameter("password");
        String repeatpassword = request.getParameter("repeatpassword");
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        if (password.equals(repeatpassword)) {
//            out.println("<html><body>");
//            out.println("<h1>" + "dit navn er " + fnavn + " " + enavn + "</h1>");
//            out.println("</body></html>");
            HttpSession session = request.getSession();
//            session.setAttribute("fnavn",fnavn);
//            request.setAttribute("fnavn",fnavn);
//            request.setAttribute("session",session);
            request.getRequestDispatcher("Bruger.jsp").forward(request,response);
        } else {
//            out.println("<html><body>");
//            out.println("<h1>" + "dit password var ikke ens " + "</h1>");
//            out.println("</body></html>");
            String msg = "Dine passwords var ikke ens. Prøv igen";
            request.setAttribute("msg",msg);
            request.getRequestDispatcher("index.jsp").forward(request,response);

        }
    }

    public void destroy() {


    }
}