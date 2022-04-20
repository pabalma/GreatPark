package com.myproject.greatpark.model.reservation;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ParkingDAOImpl implements ParkingDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ParkingDTO> list() {
		return sqlSession.selectList("reservation.parking_list");
	}

}
