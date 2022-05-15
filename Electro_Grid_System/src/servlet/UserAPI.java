package servlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import model.User_Model;

/**
 * Servlet implementation class UserAPI
 */
@WebServlet("/UserAPI")
public class UserAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 User_Model cus = new User_Model();
   

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
		// TODO Auto-generated method stub
		//get page
		String method = request.getParameter("method");
		
		// clicked button delete
		if (method.equals("delete")) {
			String userId = request.getParameter("uid");
			String output = cus.deleteUser(userId);
			System.out.println(userId);
			response.getWriter().write(output);
		}
		
		
		// clicked insert button
		else if(method.equals("insert")) {
			String name = request.getParameter("cusname");
			String address = request.getParameter("cusaddress");
			String accno = request.getParameter("cusaccno");
			String nic = request.getParameter("cusnic");
			String email = request.getParameter("cusemail");
			String phone = request.getParameter("cusphone");
			String type = request.getParameter("custype");
			String uname = request.getParameter("cususername");
			String pass = request.getParameter("cuspassword");
			
			int AccNo = Integer.parseInt(accno);
			
			String output = cus.addUser(name, address, AccNo, nic, email, phone, type, uname, pass);
			response.getWriter().write(output);
		}
		
		//single user details
		else if(method.equals("singlecusdetails")) {
			
			//get user id to view
			int uid = Integer.parseInt(request.getParameter("uidtobeupdate"));
			
			String output = cus.singleUserDetails(uid);
			response.getWriter().write(output);
		}
		
	}

	// Converter
	private static String inputStreamToString(InputStream inputStream) {
	      Scanner scanner = new Scanner(inputStream, "UTF-8");
	      return scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
	  }

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Convert request body to json
				String jsonString = inputStreamToString(request.getInputStream());
				JSONObject json = new JSONObject(jsonString);
				
				int uid = Integer.parseInt(json.getString("uid"));
				String name = json.getString("name");
				String address = json.getString("addr");
				int accno = Integer.parseInt(json.getString("accno"));
				String nic = json.getString("nic");
				String email = json.getString("email");
				String phone = json.getString("phone");
				String type = json.getString("type");
				String uname = json.getString("uname");
				String pass = json.getString("pass");
				
				String output = cus.editUser(uid, name, address, accno, nic, email, phone, type, uname, pass);
				System.out.println(output);
				response.getWriter().write(output);
	}
	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
