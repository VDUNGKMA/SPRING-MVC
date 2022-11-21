package Demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HomeController {
	@RequestMapping(value={"/","/home","/admin"})
	public String Index() {
		return "user/index";
	
		
	}

}
