package dao;


import entity.User;

public interface ServiceDao {

    User findUserById(String id);
}
