package DiamonShop.UserController.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Dao.SlidesDao;

@Controller
public class HomeController {
	@Autowired
	SlidesDao slidesDao;
	
	@RequestMapping(value= {"/","/home"})
	public ModelAndView Index() {
		ModelAndView mv=new ModelAndView("user/index");
	mv.addObject("slides",slidesDao.GetDateSlides());
		return mv;
	}
	
	@RequestMapping(value= {"/product"})
	public ModelAndView Product() {
		ModelAndView mv=new ModelAndView("user/product");
		return mv;
	}

}
