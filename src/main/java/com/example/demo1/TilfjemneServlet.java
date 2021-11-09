package com.example.demo1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

@WebServlet(name = "TilfjemneServlet", value = "/TilfjemneServlet")
public class TilfjemneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bund = request.getParameter("bund");
        String topping = request.getParameter("topping");
        String antal = request.getParameter("antal");
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        List<String> indkøbsliste = (List<String>) session.getAttribute("indkøbsliste");

        if (indkøbsliste == null) {
            indkøbsliste = new ArrayList<>();
        }
        ServletContext servletContext=request.getServletContext();
        List<String> kurv = (List<String>) servletContext.getAttribute("kurv");

        if (kurv==null) {
            kurv = new ArrayList<>();
        }
        kurv.add(bund);
        servletContext.setAttribute("kurv",kurv);
        if (!kurv.contains(bund)) {
            kurv.add(bund);
            kurv.add(topping);
            kurv.add(antal);
        }
            session.setAttribute("indkøbsliste", indkøbsliste);
            request.getRequestDispatcher("Bruger.jsp").forward(request,response);
        }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        ServletContext servletContext=request.getServletContext();
        request.getRequestDispatcher("Bruger.jsp").forward(request,response);
    }

    }


