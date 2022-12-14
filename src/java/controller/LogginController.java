/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dao.AccountDAO;
import dbconnect.DBConnect;
import entity.Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogginController")
public class LogginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        HttpSession session = req.getSession();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("email")) {
                session.setAttribute("email", cookie.getValue());
            } else if (cookie.getName().equals("pass")) {
                session.setAttribute("pass", cookie.getValue());
            }
        }
        req.getRequestDispatcher("viewsAuthentication/login.jsp").forward(req, resp);
//        resp.sendRedirect("viewsAuthentication/login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AccountDAO accountDAO = new AccountDAO(DBConnect.getConnection());
        String email = req.getParameter("username");
        String pass = req.getParameter("password");
        String rememberMe = req.getParameter("remember-me");
        Account account = accountDAO.getAccount(email, pass);
        Cookie cookieEmail = new Cookie("email", email);
        Cookie cookiePass = new Cookie("pass", pass);
        if (account != null) {
            HttpSession session = req.getSession();
            session.setAttribute("account", account);
            if (rememberMe != null) {
                cookieEmail.setMaxAge(60 * 60 * 12);
                cookiePass.setMaxAge(60 * 60 * 12);
            } else {
                cookieEmail.setMaxAge(0);
                cookiePass.setMaxAge(0);
            }
            resp.addCookie(cookieEmail);
            resp.addCookie(cookiePass);

            switch (account.getRoldId()) {
                case 1:
                    req.getRequestDispatcher("viewsAdmin/listuser.jsp").forward(req, resp);
                    break;
                case 2:
                    req.getRequestDispatcher("viewsAdmin/adminlistproduct.jsp").forward(req, resp);
                    break;
                case 3:
                    req.getRequestDispatcher("viewsCustomer/home.jsp").forward(req, resp);
                    break;
                case 4:
                    resp.sendRedirect("HomeController");
                    req.getRequestDispatcher("HomeController").forward(req, resp);
                    break;

            }
        }
    }

}
