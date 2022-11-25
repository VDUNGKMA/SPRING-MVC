package SmartWatch.Service.User;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SmartWatch.Dao.MenuDao;
import SmartWatch.Dao.SlidesDao;
import SmartWatch.Entity.Menu;
import SmartWatch.Entity.Slides;


@Service
public class HomeserviceImpl {
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private SlidesDao slidesDao;
	public List<Menu> GetDataMenu(){
		return menuDao.GetDataMenu();
	}
	public List<Slides> GetDataSlides(){
		return slidesDao.GetDataSlides();
	}
}
