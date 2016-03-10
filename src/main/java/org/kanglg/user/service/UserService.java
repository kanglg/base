package org.kanglg.user.service;


import org.kanglg.model.User;

import java.util.List;

/**
 * Created by kanglg on 16/3/9.
 */
public interface UserService {
  User getUserById(String id);

  List<User> getUsers();

  int insert(User user);
}

