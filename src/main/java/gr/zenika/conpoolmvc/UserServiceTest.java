package gr.zenika.conpoolmvc;

import java.util.List;

import gr.zenika.conpoolmvc.domain.User;
import gr.zenika.conpoolmvc.service.UserService;

import org.springframework.context.support.GenericXmlApplicationContext;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class UserServiceTest {
	public static void main(String[] args) {
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext();
		ctx.load("classpath:app-context.xml");
		ctx.refresh();
		
		UserService userService = ctx.getBean("userService", UserService.class);
		List<User> users = userService.findAll();
		
		Gson gson = new Gson();
		String json = null;
		for (User user : users) {
			json = gson.toJson(user);
			System.out.println(user);
			System.out.println(json);
		}
		gson = null;
		gson = new GsonBuilder().setPrettyPrinting().create();
		//String jsonOutput = gson.toJson(someObject);
		json = gson.toJson(users);
		System.out.println(json);
		
		
		  
	}
}
