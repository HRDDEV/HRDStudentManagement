package Controller.Article;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.dao.StudentDAO;
import model.dto.Student;
import Controller.Action;
import Controller.ActionForward;

public class GetClassName implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ArrayList<String> className = new StudentDAO().classList();

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		String classList = new Gson().toJson(className);
		
		response.getWriter().write(classList);
	
		System.out.println(classList);
		
		return null;
	}
	public static void main(String[] args) {
		
	}

}
