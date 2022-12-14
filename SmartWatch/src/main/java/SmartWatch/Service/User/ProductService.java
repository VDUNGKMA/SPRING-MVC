package SmartWatch.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SmartWatch.Dao.ProductsDao;
import SmartWatch.Dto.ProductsDto;

@Service
public class ProductService implements IProductService {
	@Autowired
	ProductsDao productsDao =new ProductsDao();
	public ProductsDto GetProductByID(long id){
		List<ProductsDto> listProducts = productsDao.GetProductByID(id);
		return listProducts.get(0);
	}
}
