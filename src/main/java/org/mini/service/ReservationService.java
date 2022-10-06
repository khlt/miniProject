package org.mini.service;

import java.util.List;

import org.mini.vo.ReservationVO;

public interface ReservationService {
	public void register(ReservationVO reserve);
	public ReservationVO get(Long reserveno);
	public boolean modify(ReservationVO reserve);
	public boolean remove(Long reserveno);
	public List<ReservationVO> getList();
}
