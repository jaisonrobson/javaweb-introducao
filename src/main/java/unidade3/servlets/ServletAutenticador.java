package unidade3.servlets;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletAutenticador
 */
@WebServlet("/ServletAutenticador")
public class ServletAutenticador extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static String url = "jdbc:mysql://localhost:3306/javaWeb";
	static String usuario = "root";
	static String senha = "admin";
	static Connection conexao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAutenticador() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {    	
    	loadDriver();
    }
    
    public void loadDriver() {
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
			conexao = DriverManager.getConnection(url, usuario, senha);
			conexao.setAutoCommit(false);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cpfmask = request.getParameter("cpf");
		cpfmask = cpfmask.replaceAll("[.-]", "");
		long cpf = Long.parseLong(cpfmask);
		String senha = request.getParameter("senha");
		
		response.setContentType("text/html");		
		String consulta = "SELECT * FROM login WHERE cpf ='"+ cpf +"' AND senha='"+senha+"'";
		
		Statement statement;
		HttpSession session = request.getSession();
		try {
			statement = conexao.createStatement();		
			ResultSet rs = statement.executeQuery(consulta);
			
			if(rs.next()) {
				session.setAttribute("mensagem", "Usuario autenticado");
				response.sendRedirect("unidade3/sucesso.jsp");
			}
			else {
				session.setAttribute("mensagem", "Usuario inexistente ou invalido");
				response.sendRedirect("unidade3/login.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
