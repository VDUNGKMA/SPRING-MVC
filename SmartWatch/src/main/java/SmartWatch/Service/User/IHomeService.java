package SmartWatch.Service.User;

import java.awt.Menu;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SmartWatch.Dao.SlidesDao;
import SmartWatch.Dto.ProductsDto;
import SmartWatch.Entity.Slides;


@Service
public interface IHomeService {
	@Autowired
	public List<Menu> GetDataMenu();
	public List<Slides> GetDataSlides();
	public List<ProductsDto> GetDataProducts();
	public List<ProductsDto> GetDataProductsFeatured();
}
