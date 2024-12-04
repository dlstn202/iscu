package portpolio.psm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("main.do")
    public String main() {
        return "main/main";
    }

    @RequestMapping("generic")
    public String generic() {
        return "main/generic";
    }

    @RequestMapping("camprover")
    public String camprover() {
        return "main/camprover";
    }

    @RequestMapping("miniProject")
    public String miniProject() {
        return "main/miniProject";
    }

}
