package SmartWatch.Service.User;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SmartWatch.Dao.MenuDao;
import SmartWatch.Dao.ProductsDao;
import SmartWatch.Dao.SlidesDao;
import SmartWatch.Dto.ProductsDto;
import SmartWatch.Entity.Menu;
import SmartWatch.Entity.Slides;


@Service
public class HomeserviceImpl {
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private ProductsDao productsDao;
	public List<Menu> GetDataMenu(){
		return menuDao.GetDataMenu();
	}
	public List<Slides> GetDataSlides(){
		return slidesDao.GetDataSlides();
	}
	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}
	public List<ProductsDto> GetDataProductsFeatured() {
		List<ProductsDto> listProducts = productsDao.GetDataProductsFeatured();
		return listProducts;
	}
	
}
