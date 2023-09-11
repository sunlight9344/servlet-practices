package servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 값
		int iVal = 10;
		String sVal = "Helllo World";
		
		UserVo userVo = new UserVo();
		userVo.setNo(99L);
		userVo.setEmail("sunlight@9344@gmail.com");
		
		request.setAttribute("ival", iVal);
		request.setAttribute("sval", sVal);
		request.setAttribute("vo", userVo);
		
		Map<String, Object> m = new HashMap<>();
		m.put("ival", iVal);
		m.put("sval", sVal);
		
		request.setAttribute("m", m);
		
		request
			.getRequestDispatcher("/WEB-INF/views/01.jsp")
			.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
