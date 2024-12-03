import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoanCalculatorServlet")
public class LoanCalculatorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double loanAmount = Double.parseDouble(request.getParameter("loanAmount"));
        double interestRate = Double.parseDouble(request.getParameter("interestRate"));
        int tenure = Integer.parseInt(request.getParameter("tenure")); // Now in months

        // EMI Calculation
        double monthlyInterestRate = interestRate / (12 * 100);
        double emi = (loanAmount * monthlyInterestRate * Math.pow(1 + monthlyInterestRate, tenure)) /
                     (Math.pow(1 + monthlyInterestRate, tenure) - 1);

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("username") != null) {
            String username = (String) session.getAttribute("username");

            String jdbcURL = "jdbc:mysql://localhost:3306/education_loan_db";
            String dbUser = "root";
            String dbPassword = "4578";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

                String sql = "INSERT INTO loan_calculations (username, loan_amount, interest_rate, tenure, emi) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, username);
                statement.setDouble(2, loanAmount);
                statement.setDouble(3, interestRate);
                statement.setInt(4, tenure);
                statement.setDouble(5, emi);

                int rowsInserted = statement.executeUpdate();
                if (rowsInserted > 0) {
                    request.setAttribute("loanAmount", loanAmount);
                    request.setAttribute("interestRate", interestRate);
                    request.setAttribute("tenure", tenure);
                    request.setAttribute("emi", emi);

                    request.getRequestDispatcher("loanCalculatorResult.jsp").forward(request, response);
                } else {
                    request.setAttribute("errorMessage", "Failed to save the loan calculation.");
                    request.getRequestDispatcher("loanCalculator.jsp").forward(request, response);
                }

                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "Error: " + e.getMessage());
                request.getRequestDispatcher("loanCalculator.jsp").forward(request, response);
            }
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}
