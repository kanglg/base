package org.kanglg.user.service.impl;

import org.kanglg.dao.UserMapper;
import org.kanglg.model.User;
import org.kanglg.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by kanglg on 16/3/9.
 */
@Service("userService")
public class UserServiceImpl implements UserService {
  @Autowired
  private UserMapper userMapper;

  public User getUserById(String id) {
    return userMapper.selectByPrimaryKey(id);
  }

  public List<User> getUsers() {
    return null;
  }

  public int insert(User user) {
    return userMapper.insert(user);
  }
}
