package com.codegym.service;

import com.codegym.model.User;
import com.codegym.repository.IUserRepository;
import com.codegym.repository.UserRepository;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService{

    private IUserRepository iUserRepository = new UserRepository();
    @Override
    public void insertUser(User user) throws SQLException {
        iUserRepository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return iUserRepository.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return iUserRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return iUserRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return iUserRepository.updateUser(user);
    }

    @Override
    public List<User> searchUser(String country) {
        return iUserRepository.searchUser(country);
    }
}
