package org.mini.mapper;

import java.util.List;

import org.mini.vo.ReservationVO;

public interface ReservationMapper {
	// @Select("select * from tbl_board where reserveno > 0")
	public List<ReservationVO> getList();
	
	public void insert(ReservationVO reserve);
	public void insertSelectKey(ReservationVO reserve);
	public ReservationVO read(Long reserveno);
	public int delete(Long reserveno);
	public int update(ReservationVO reserve);
	
}
