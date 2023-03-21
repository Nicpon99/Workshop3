package pl.coderslab;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;
import pl.coderslab.utils.DbUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/servlet1")
public class Servlet1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try(Connection connection = DbUtil.getConnection()){
            UserDao userDao = new UserDao();
            User[] users = userDao.findAll();
            for (User user : users) {
                response.getWriter().println(user);
            }

        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
