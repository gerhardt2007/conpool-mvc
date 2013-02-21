package gr.zenika.conpoolmvc.service.jpa;

import java.util.List;

import gr.zenika.conpoolmvc.domain.User;
import gr.zenika.conpoolmvc.repository.UserRepository;
import gr.zenika.conpoolmvc.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;

@Service("userService")
@Repository
@Transactional
public class UserServiceImpl implements UserService {
	
	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Autowired
	private UserRepository userRepository; 

	@Transactional(readOnly=true)
	public List<User> findAll() {
		logger.info("Listing all users");
		return Lists.newArrayList(userRepository.findAll());
	}

	@Transactional(readOnly=true)
	public User findById(Long id) {
		return userRepository.findOne(id);
	}

	
	public User save(User user) {
		return userRepository.save(user);
	}

	
	public void delete(User user) {
		userRepository.delete(user);
	}

}
