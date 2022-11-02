package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class controller {

    @RequestMapping(value = "/HI")
    public String test(){
        System.out.println("CJH TEST");
        return "index";
    }
}
