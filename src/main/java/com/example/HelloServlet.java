package com.example.webapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Random;

public class HelloServlet extends HttpServlet {

    private static final List<String> QUOTES = List.of(
            "Success is not final, failure is not fatal.",
            "Dream big, work hard, stay focused.",
            "Every day is a chance to grow.",
            "Consistency is the key to mastery.",
            "Great things never come from comfort zones."
    );

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String clientIP = req.getRemoteAddr();
        String time = LocalDateTime.now().toString();
        String quote = QUOTES.get(new Random().nextInt(QUOTES.size()));

        out.println("<html><body style='font-family: Arial; margin: 40px;'>");
        out.println("<h1 style='color: #1a73e8;'>🔥 Hello from Heavy Servlet!</h1>");
        out.println("<h3>Your IP: " + clientIP + "</h3>");
        out.println("<h3>Server Time: " + time + "</h3>");
        out.println("<h3>Quote of the Day: <i>" + quote + "</i></h3>");
        out.println("<a href='/simple-tomcat-app'>Go Home</a>");
        out.println("</body></html>");
    }
}
