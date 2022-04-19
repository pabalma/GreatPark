package com.myproject.greatpark.model.reservation;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class FareDAOImpl implements FareDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<FareDTO> list() {
		return sqlSession.selectList("reservation.fare_list");
	}

}
