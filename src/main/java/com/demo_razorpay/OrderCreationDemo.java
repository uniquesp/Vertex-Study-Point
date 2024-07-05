package com.demo_razorpay;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;
import com.razorpay.Utils;
import io.github.cdimascio.dotenv.Dotenv;

/**
 * Servlet implementation class OrderCreationDemo
 */
@WebServlet("/OrderCreationDemo")
public class OrderCreationDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderCreationDemo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RazorpayClient client=null;
		String orderId=null;
		Dotenv dotenv = Dotenv.configure().load();
		try {
			  client=new RazorpayClient(dotenv.get("rzp_test_gLeEip1zRrRi0a"),dotenv.get("fEH0phBEwa7xpojuSosqrxI9"));
			  JSONObject options = new JSONObject();
			  options.put("amount", 10000); // amount in the smallest currency unit
			  options.put("currency", "INR");
			  options.put("receipt", "zxr456");
			  options.put("payment_capture", true);
			 
			Order order = client.orders.create(options);
            orderId=order.get("id");
			} catch (RazorpayException e) {
			  // Handle Exception
				 e.printStackTrace();
			}
       response.getWriter().append(orderId);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 Dotenv dotenv = Dotenv.configure().load();
		try {
			  RazorpayClient client=new RazorpayClient(dotenv.get("rzp_test_gLeEip1zRrRi0a"),dotenv.get("fEH0phBEwa7xpojuSosqrxI9"));
			  JSONObject options = new JSONObject();
			  options.put( "razorpay_payment_id",request.getParameter("razorpay_payment_id")); // amount in the smallest currency unit
			  options.put("razorpay_order_id",request.getParameter("razorpay_order_id"));
			  options.put("razorpay_signature",request.getParameter("razorpay_signature"));
			  boolean signRes=Utils.verifyPaymentSignature(options,dotenv.get("API_KEY_SECRET"));
			  if(signRes) {
				  request.setAttribute("message","Payment successful and signature verified");  
				  request.setAttribute("buttontext", "Pay Again");
				  request.setAttribute("imgpath", "images/success.gif");
				  response.sendRedirect("../VertexWebsite/Thanks.html");
			  }else {
				  request.setAttribute("message"," Payment failed and signature not verified");
				  request.setAttribute("buttontext", "Try Again");
				  request.setAttribute("imgpath", "images/error.gif");
			  }
			  request.setAttribute("status",signRes);
			  RequestDispatcher dispatcher = request.getRequestDispatcher("status.jsp");
		      dispatcher.forward(request, response);
		    } catch (RazorpayException e) {
			  // Handle Exception
			 e.printStackTrace();
			}
		 
	}

}
