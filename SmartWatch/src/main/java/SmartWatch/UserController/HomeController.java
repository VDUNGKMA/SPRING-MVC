package SmartWatch.UserController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import SmartWatch.Dao.ProductsDao;



@Controller
public class HomeController extends BaseController {
	@Autowired
	ProductsDao productsDao;
	@RequestMapping(value = {"/","/home"})
	public ModelAndView Index() {
		_mvShare.addObject("slides",_homeService.GetDataSlides());
		_mvShare.setViewName("user/index");
		_mvShare.addObject("products",productsDao.GetDataProducts());
		_mvShare.addObject("productsFetured",productsDao.GetDataProductsFeatured());
		return _mvShare;
	}

}
