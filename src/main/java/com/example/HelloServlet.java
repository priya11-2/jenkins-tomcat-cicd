package com.example;

import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name="helloServlet", urlPatterns="/")
public class HelloServlet extends HttpServlet {
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    resp.getWriter().println("Application Deployed Successfully via Jenkins → Tomcat!");
  }
}
