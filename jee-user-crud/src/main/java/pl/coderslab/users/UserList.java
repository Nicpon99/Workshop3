package pl.coderslab.users;

import pl.coderslab.entity.UserDao;
import pl.coderslab.utils.DbUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/user/list")
public class UserList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection connection = DbUtil.getConnection()){
            UserDao userDao = new UserDao();
            request.setAttribute("users", userDao.findAll());
            getServletContext().getRequestDispatcher("/users/list.jsp").forward(request, response);
        } catch (SQLException e){
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
