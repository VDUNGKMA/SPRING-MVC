package SmartWatch.Service.User;

import org.springframework.stereotype.Service;

import SmartWatch.Dto.PaginatesDto;

@Service
public class PaginatesServiceImpl {
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currenPage) {
		PaginatesDto paginates = new PaginatesDto();

		paginates.setLimit(limit);
		paginates.setTotalPage(SetInfoTotalPage(totalData, limit));
		paginates.setCurrenPage(CheckCurrentPage(currenPage, paginates.getTotalPage()));
		int start = FindStart(paginates.getCurrenPage(), limit);
		paginates.setStart(start);
		int end = FindEnd(paginates.getStart(), limit, totalData);
		paginates.setEnd(end);
		return paginates;
	}

	private int FindStart(int currenPage, int limit) {

		return (currenPage - 1) * limit + 1;
	}

	private int FindEnd(int start, int limit, int totalData) {

		return start + limit > totalData ? totalData : (start + limit) - 1;
	}

	private int SetInfoTotalPage(int totalData, int limit) {
		int totalPage = 0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit == totalData ? totalPage : totalPage+1;
		return totalPage;
	}

	public int CheckCurrentPage(int currentPage, int totalPage) {
		if (currentPage < 1) {
			return 1;
		}
		if (currentPage > totalPage) {
			return totalPage;
		}
		return currentPage;
	}

}
