package SmartWatch.UserController;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import SmartWatch.Service.User.HomeserviceImpl;


@Controller
public class BaseController {
	@Autowired
	HomeserviceImpl _homeService;
	public ModelAndView _mvShare =new ModelAndView();
	@PostConstruct
	public ModelAndView Init() {
		_mvShare.addObject("menus",_homeService.GetDataMenu());
		return _mvShare;
	}
}
