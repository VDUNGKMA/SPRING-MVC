package SmartWatch.UserController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import SmartWatch.Dao.ProductsDao;
import SmartWatch.Dto.PaginatesDto;
import SmartWatch.Dto.ProductsDto;
import SmartWatch.Service.User.CategoryServiceImpl;
import SmartWatch.Service.User.PaginatesServiceImpl;
@Controller
public class CategoryController extends BaseController {
	@Autowired
	private CategoryServiceImpl categoryService;
	@Autowired
	private PaginatesServiceImpl paginatesService;
	
	private int totalProductsPage=8;
	
	@RequestMapping(value = "/products")
	public ModelAndView Product() {
		
		_mvShare.setViewName("user/products/category");
		_mvShare.addObject("menus",_homeService.GetDataMenu());
		_mvShare.addObject("AllProducts", categoryService.GetAllProductsBy());
		int totalData= categoryService.GetAllProductsBy().size();
		PaginatesDto paginateInfo =paginatesService.GetInfoPaginates(totalData, totalProductsPage,1);
		_mvShare.addObject("PaginateInfo", paginateInfo);
		_mvShare.addObject("ProductsPaginate", categoryService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = "/products/{currenPage}")
	public ModelAndView Product(@PathVariable int currenPage) {
		int totalProducts=8;
		_mvShare.setViewName("user/products/category");
		_mvShare.addObject("menus",_homeService.GetDataMenu());
		_mvShare.addObject("AllProducts", categoryService.GetAllProductsBy());
		int totalData= categoryService.GetAllProductsBy().size();
		PaginatesDto paginateInfo =paginatesService.GetInfoPaginates(totalData, totalProducts,currenPage);
		_mvShare.addObject("PaginateInfo", paginateInfo);
		_mvShare.addObject("ProductsPaginate", categoryService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
}
