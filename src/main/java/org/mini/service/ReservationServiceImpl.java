package org.mini.service;

import java.util.List;

import org.mini.mapper.ReservationMapper;
import org.mini.vo.ReservationVO;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ReservationServiceImpl implements ReservationService {
	// spring 4.3 이상에서 자동 처리
	private ReservationMapper mapper;

	@Override
	public void register(ReservationVO reserve) {
		log.info("register......" + reserve.getReserveno());
		mapper.insertSelectKey(reserve);
	}

	@Override
	public ReservationVO get(Long reserveno) {
		log.info("get......." + reserveno);
		return mapper.read(reserveno);
	}

	@Override
	public boolean modify(ReservationVO reserve) {
		log.info("modify..........." + reserve);
		return mapper.update(reserve)==1;
	}

	@Override
	public boolean remove(Long reserveno) {
		log.info("remove......" + reserveno);
		return mapper.delete(reserveno)==1;
	}

	@Override
	public List<ReservationVO> getList() {
		log.info("getList..............");
		return mapper.getList();
	}
}
