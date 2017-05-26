package sucfuc.king.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StartController 
{
	 private static final Logger logger=LoggerFactory.getLogger(StartController.class);
	 
	 @RequestMapping(value = "main.do", method = RequestMethod.GET)
	    public String main(Model model) throws Exception {

	        logger.info("Welcome HomeController home---------------------------------!");
	        model.addAttribute("main", "썽공");
	        return "main";
	    }   
}
