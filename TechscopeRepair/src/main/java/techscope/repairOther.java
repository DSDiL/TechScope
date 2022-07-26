package techscope;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/repairOther")
public class repairOther extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cID=request.getParameter("cID");
		String com=request.getParameter("com");
		String date=request.getParameter("date");
		String dev=request.getParameter("dev");
		String des=request.getParameter("des");
		String spare=request.getParameter("spare");
		String qty=request.getParameter("qty");
		String cost=request.getParameter("cost");

		boolean istrue;
		
		istrue=repairDButil.insertOtherRepair(cID, com, date, dev, des, spare, qty, cost);
		
		if(istrue==true)
		{
			try {
				List<onGoingOther> onGoingOther = repairDButil.repairOtherID();
				request.setAttribute("onGoingOther", onGoingOther);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			RequestDispatcher dis=request.getRequestDispatcher("repairID.jsp");
			dis.forward(request, response);
		}
		else
		{
			RequestDispatcher dis=request.getRequestDispatcher("repairFormOther.jsp");
			dis.forward(request, response);
		}
	}

}
