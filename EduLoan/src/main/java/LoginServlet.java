import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String jdbcURL = "jdbc:mysql://localhost:3306/education_loan_db";
        String dbUser = "root";
        String dbPassword = "4578";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // SQL query to check if username and password match
            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // Login successful, create session and redirect to dashboard
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("loanCalculator.jsp"); // Redirect to the user's dashboard
            } else {
                // Login failed, show error message
                request.setAttribute("errorMessage", "Invalid username or password.");
                request.getRequestDispatcher("login.jsp").forward(request, response); // Redirect back to login page with error
            }

            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response); // Forward to an error page
        }
    }
}
