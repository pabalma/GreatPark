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
		return sqlSession.selectList("parking.list");
	}
	
	@Override
	public void insert(ParkingDTO dto) {
		sqlSession.insert("parking.insert", dto);
	}
	
	@Override
	public FareDTO detail(int code){
		return sqlSession.selectOne("parking.detail", code);
	}
	
	@Override
	public void update(ParkingDTO dto){
		sqlSession.update("parking.update", dto);
	}
	
	@Override
	public void delete(int code){
		sqlSession.delete("parking.delete", code);
	}

}
