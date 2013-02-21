package gr.zenika.conpoolmvc.repository;

import gr.zenika.conpoolmvc.domain.User;

import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long>{

}
