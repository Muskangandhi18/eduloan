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

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        String jdbcURL = "jdbc:mysql://localhost:3306/education_loan_db";
        String dbUser = "root";
        String dbPassword = "4578";

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Check if the username, email, or password already exists
            String checkSQL = "SELECT * FROM users WHERE username = ? OR email = ? OR password = ?";
            statement = connection.prepareStatement(checkSQL);
            statement.setString(1, username);
            statement.setString(2, email);
            statement.setString(3, password);
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // Check which field exists and set an appropriate error message
                String existingUsername = resultSet.getString("username");
                String existingEmail = resultSet.getString("email");
                String existingPassword = resultSet.getString("password");

                if (username.equals(existingUsername)) {
                    request.setAttribute("errorMessage", "Error: Username already exists. Please choose a different username.");
                } else if (email.equals(existingEmail)) {
                    request.setAttribute("errorMessage", "Error: Email already exists. Please use a different email.");
                } else if (password.equals(existingPassword)) {
                    request.setAttribute("errorMessage", "Error: Password already exists. Please choose a different password.");
                }

                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
                // Insert new user if no conflict is found
                String insertSQL = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";
                statement = connection.prepareStatement(insertSQL);
                statement.setString(1, username);
                statement.setString(2, password);
                statement.setString(3, email);

                int rowsInserted = statement.executeUpdate();
                if (rowsInserted > 0) {
                    request.setAttribute("successMessage", "Registration successful. You can now log in.");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                } else {
                    request.setAttribute("errorMessage", "Registration failed. Please try again.");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error: " + e.getMessage());
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } finally {
            // Close resources
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
