package DiamonShop.UserController.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Dao.CategorysDao;
import DiamonShop.Dao.MenuDao;
import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dao.SlidesDao;

@Controller
public class HomeController {
	@Autowired
	SlidesDao slidesDao;
	@Autowired
	CategorysDao categorysDao;
	@Autowired
	MenuDao menuDao;
	@Autowired
	ProductsDao productsDao;
	
	@RequestMapping(value= {"/","/home"})
	public ModelAndView Index() {
		ModelAndView mv=new ModelAndView("user/index");
	mv.addObject("slides",slidesDao.GetDateSlides());
	mv.addObject("categorys",categorysDao.GetDataCategorys());
	mv.addObject("menus",menuDao.GetDataMenus());
	mv.addObject("products",productsDao.GetDataProducts());
	
		return mv;
	}
	

}
