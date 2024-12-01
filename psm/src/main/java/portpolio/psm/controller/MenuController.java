package portpolio.psm.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MenuController {

    @RequestMapping("goMenu")
    public String goMenu(Model model, @RequestParam HashMap<String, Object> param) {

        model.addAttribute("param", param);

        return "menu/main";
    }

    @RequestMapping("content")
    public String content(Model model, @RequestParam String clickMenu) {
        return "menu/" + clickMenu;
    }

}
