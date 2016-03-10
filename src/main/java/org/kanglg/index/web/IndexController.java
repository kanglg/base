package org.kanglg.index.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by kanglg on 16/3/9.
 */
@Controller
@RequestMapping("/index")
public class IndexController {

  @RequestMapping(method = RequestMethod.GET)
  public String index() {
    return "/index";
  }
}
