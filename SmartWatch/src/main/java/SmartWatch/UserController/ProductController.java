package SmartWatch.UserController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import SmartWatch.Dao.ProductsDao;
import SmartWatch.Service.User.IProductService;

@Controller
public class ProductController extends BaseController {
	@Autowired
	private IProductService _productService;
	@Autowired
	ProductsDao productsDao;
	@RequestMapping(value = { "product_detail/{id}" })
	public ModelAndView Product(@PathVariable long id) {
		
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("product",_productService.GetProductByID(id));
		_mvShare.addObject("productby",productsDao.GetDataProducts());
		return _mvShare;
	}
}
