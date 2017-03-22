package com.zf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <p>Title:controller<p>
 * <p>Description:</p>
 * <p>Company:www.scbdlbs.com</p>
 *
 * @author zf
 * @version 1.0
 * @date 2017/3/22
 */
@Controller
public class IndexController {

    @RequestMapping(value = "/index")
    public String index()
    {
        return "index";
    }
}
