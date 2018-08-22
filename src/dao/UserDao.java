package dao;

import entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("dao")
public interface UserDao {

    User findUserById(Integer id);
    List<User> findAll();

}
