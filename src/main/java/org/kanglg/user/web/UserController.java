package org.kanglg.user.web;

import org.kanglg.model.User;
import org.kanglg.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by kanglg on 16/3/8.
 */
@Controller
@RequestMapping("/user")
public class UserController {
  @Autowired
  private UserService userService;
  @RequestMapping(method = RequestMethod.GET)
  public String index() {
//    User user = userService.getUserById("1");
    return "/user/user-index";
  }
}
