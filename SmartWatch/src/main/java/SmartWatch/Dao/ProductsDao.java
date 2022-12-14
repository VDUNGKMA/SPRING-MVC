package SmartWatch.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import SmartWatch.Dto.ProductsDto;
import SmartWatch.Dto.ProductsDtoMapper;

@Repository
public class ProductsDao extends BaseDao{
	private StringBuffer SqlString() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id as id_product ");
		sql.append(", p.id_category ");
		sql.append(", p.sizes ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.title ");
		sql.append(", p.highlight ");
		sql.append(", p.new_product ");
		sql.append(", p.details ");
		sql.append(", c.id as id_color ");
		sql.append(", c.name as name_color ");
		sql.append(", c.code as code_color ");
		sql.append(", c.img ");
		sql.append(", p.created_at ");
		sql.append(", p.updated_at ");
		sql.append("FROM ");
		sql.append("products AS p ");
		sql.append("INNER JOIN ");
		sql.append("colors AS c ");
		sql.append("ON p.id = c.id_product ");
		return sql;
	}
	private String SqlProducts(boolean newProduct, boolean highLight) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		if (highLight) {
			sql.append("AND p.highlight = true ");
		}
		if (newProduct) {
			sql.append("AND p.new_product = true ");
		}
		sql.append("GROUP BY p.id, c.id_product ");
		sql.append("ORDER BY RAND() ");
		if (highLight) {
			sql.append("LIMIT 2 ");
		}
		if (newProduct) {
			sql.append("LIMIT 12 ");
		}
		return sql.toString();
	}
	public List<ProductsDto> GetDataProductsFeatured() {
		String sql = SqlProducts(false,true);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	public List<ProductsDto> GetDataProducts() {
		String sql = SqlProducts(true,false);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	public List<ProductsDto> GetAllProductsBy(){
		String sql = SqlString().toString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	private String SqlStringPaginate(int start,int totalPage) {
		StringBuffer sql=SqlString();
		sql.append("LIMIT " + start + ", "+ totalPage);
		return sql.toString();
	}
	public List<ProductsDto> GetDataProductsPaginate(int start,int totalPage){
		StringBuffer sqlGetDataBy =SqlString();
		List<ProductsDto> listProductsBy =_jdbcTemplate.query(sqlGetDataBy.toString(), new ProductsDtoMapper());
		List<ProductsDto> listProducts =new ArrayList<ProductsDto>();
		if(listProductsBy.size()>0) {
		String sql=SqlStringPaginate(start, totalPage);
		listProducts =_jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		return listProducts; 
	}
	public String SqlProductByID(long id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id = " + id + " ");
		sql.append("LIMIT 1 ");
		return sql.toString();
	}
	public List<ProductsDto> GetProductByID(long id) {
		String sql =SqlProductByID(id);
		List<ProductsDto> listProduct = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProduct;
	}
	public ProductsDto FindProductByID(long id) {
		String sql=SqlProductByID(id);
		ProductsDto product =_jdbcTemplate.queryForObject(sql,new ProductsDtoMapper());
		return product;
	}
	
	
	
}
