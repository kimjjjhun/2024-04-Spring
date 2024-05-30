package kr.trip.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.trip.domain.Criteria;
import kr.trip.domain.HelpVO;
import kr.trip.mapper.HelpMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@RequiredArgsConstructor
@Log4j
public class HelpServiceImpl implements HelpService{

	//생성자 주입
	private final HelpMapper helpmapper;


	@Override
	public List<HelpVO> getListHelp(Criteria cri) {
		int page = cri.getPageNum();
		
		if(page <= 0) {
			
			page = 1;
		}
		page = (page - 1) * 10;
		
		cri.setPage(page);
		
		System.out.println("cri총 값 체크" + cri);
		log.info("-----------------------");
		log.info("cri의 총 값"+cri);
		log.info("-----------------------");
		return helpmapper.getListWithPaging(cri);
	}

	@Override
	public boolean insertHelp(HelpVO vo) {
		return   helpmapper.insertHelp(vo) == 1;
	}

	@Override
	public HelpVO readHelp(int help_id) {
		return helpmapper.readHelp(help_id);
	}

	@Override
	public boolean updateHelp(HelpVO vo) {
		return helpmapper.updateHelp(vo) == 1;
	}

	@Override
	public boolean deleteHelp(int help_id) {
		return helpmapper.deleteHelp(help_id) == 1;
	} 
}
