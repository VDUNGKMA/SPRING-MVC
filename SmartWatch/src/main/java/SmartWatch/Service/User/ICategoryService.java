package SmartWatch.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import SmartWatch.Dto.ProductsDto;
@Service
public interface ICategoryService {
	public List<ProductsDto> GetAllProductsBy();
	public List<ProductsDto> GetDataProductsPaginate(int start,int totalPage);
}
