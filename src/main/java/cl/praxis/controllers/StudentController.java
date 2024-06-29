package cl.praxis.controllers;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cl.praxis.models.services.StudentService;

@WebServlet("/students")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private StudentService service = new StudentService();

	public StudentController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		if (session.getAttribute("isLogged") == null) {
			getServletContext().getRequestDispatcher("/login").forward(request, response);
			return;
		}

		boolean isLogged = (boolean) session.getAttribute("isLogged");

		if (!isLogged) {
			getServletContext().getRequestDispatcher("/login").forward(request, response);
			return;
		}
		
		
		// crear cookie
		// Cookie cookie = new Cookie("username", "Brian");
		// response.addCookie(cookie);
		// leer las cookies
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				System.out.println(cookie.getName() + ": " + cookie.getValue());
			}
		}

		String param = request.getParameter("id");

		if (param == null) {
			request.setAttribute("students", service.findAll());
			getServletContext().getRequestDispatcher("/students.jsp").forward(request, response);
		} else {
			int id = Integer.parseInt(param);

			request.setAttribute("student", service.findOne(id));
			getServletContext().getRequestDispatcher("/student.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		int id = Integer.parseInt(request.getParameter("id"));
		String name = (String) request.getParameter("name");
		String lastName = request.getParameter("lastName");
		String address = (String) request.getParameter("address");
		LocalDate birthday = LocalDate.parse(request.getParameter("birthday"));

		boolean result = service.update(id, name, lastName, address, birthday);

		if (result) {
			request.setAttribute("students", service.findAll());
			getServletContext().getRequestDispatcher("/students.jsp").forward(request, response);
		} else {
			System.out.println("ERROR!!!");
			request.setAttribute("student", service.findOne(id));
			getServletContext().getRequestDispatcher("/student.jsp").forward(request, response);
		}

	}

}
