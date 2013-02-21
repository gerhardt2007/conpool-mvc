package gr.zenika.conpoolmvc.service;

import gr.zenika.conpoolmvc.domain.User;

import java.util.List;

public interface UserService {

	public List<User> findAll();

	public User findById(Long id);

	public User save(User user);
	
	public void delete(User user);

}
