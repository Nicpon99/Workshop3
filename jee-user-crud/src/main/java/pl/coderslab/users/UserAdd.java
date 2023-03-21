package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;
import pl.coderslab.utils.DbUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/user/add")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection connection = DbUtil.getConnection()){


            getServletContext().getRequestDispatcher("/users/add.jsp").forward(request, response);
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection connection = DbUtil.getConnection()){
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            User user = new User();
            user.setUserName(username);
            user.setEmail(email);
            user.setPassword(password);
            UserDao userDao = new UserDao();
            userDao.create(user);
            response.sendRedirect(request.getContextPath() + "/user/list");

        } catch (SQLException e){
            e.printStackTrace();
        }
    }
}
