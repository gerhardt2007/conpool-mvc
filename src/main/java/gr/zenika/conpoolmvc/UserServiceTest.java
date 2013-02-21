package gr.zenika.conpoolmvc;

import java.util.List;

import gr.zenika.conpoolmvc.domain.User;
import gr.zenika.conpoolmvc.service.UserService;

import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceTest {
	public static void main(String[] args) {
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext();
		ctx.load("classpath:app-context.xml");
		ctx.refresh();
		
		UserService userService = ctx.getBean("userService", UserService.class);
		List<User> users = userService.findAll();
		
		for (User user : users) {
			System.out.println(user);
		}
	}
}
