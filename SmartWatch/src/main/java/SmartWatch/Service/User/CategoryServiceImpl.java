package SmartWatch.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SmartWatch.Dao.ProductsDao;
import SmartWatch.Dto.ProductsDto;
@Service
public class CategoryServiceImpl implements ICategoryService {
		@Autowired
		private ProductsDao productsDao;
	
	public List<ProductsDto> GetAllProductsBy() {
		
		return productsDao.GetAllProductsBy();
	}
	public List<ProductsDto> GetDataProductsPaginate(int start, int totalPage) {
		
		return productsDao.GetDataProductsPaginate(start, totalPage);
	}
	
}
