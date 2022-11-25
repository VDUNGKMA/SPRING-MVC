package SmartWatch.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class MapperMenu implements RowMapper<Menu> {

	public Menu mapRow(ResultSet rs, int rowNum) throws SQLException {
		Menu menus =new Menu();
		menus.setId(rs.getInt("id"));
		menus.setName(rs.getString("name"));
		menus.setUrl(rs.getString("url"));
		return menus;	
	}

}
