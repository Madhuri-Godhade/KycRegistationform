

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		String nationality=request.getParameter("nationality");
		String email=request.getParameter("email");
		String cAddress=request.getParameter("cAddress");
		String pAddress=request.getParameter("pAddress");
		String occupation=request.getParameter("occupation");
		String occuDetails=request.getParameter("occuDetails");
		
		Member member=new Member(name, age, gender, nationality, email, cAddress, pAddress,occupation, occuDetails);
			
		RegisterDao rdao=new RegisterDao();
		String rs=null;
		
			try {
				rs = rdao.insert(member);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		response.getWriter().print(rs);
	}

}
