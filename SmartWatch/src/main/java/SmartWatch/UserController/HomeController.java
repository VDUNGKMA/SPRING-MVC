package SmartWatch.UserController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {
	@RequestMapping(value = {"/","/home"})
	public ModelAndView Index() {
		_mvShare.addObject("slides",_homeService.GetDataSlides());
		_mvShare.setViewName("user/index");
		
		return _mvShare;
	}

}
