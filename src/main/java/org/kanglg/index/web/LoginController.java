package org.kanglg.index.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by kanglg on 16/3/23.
 */
@RequestMapping("/login")
public class LoginController {
  @RequestMapping(method = RequestMethod.GET)
  public String index() {
    return "/login/login-index";
  }
}
