package SmartWatch.Service.User;

import org.springframework.stereotype.Service;

import SmartWatch.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates(int totalPage,int limit,int currenPage) ;
	
}
