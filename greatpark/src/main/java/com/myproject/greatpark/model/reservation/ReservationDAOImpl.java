package com.myproject.greatpark.model.reservation;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDAOImpl implements ReservationDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ReservationDTO> list(String userid) {
		return sqlSession.selectList("reservation.list", userid);
	}

	@Override
	public ReservationDTO detail(int idx) {
		return sqlSession.selectOne("reservation.detail", idx);
	}
	
	@Override
	public void insert(ReservationDTO dto) {
		sqlSession.insert("reservation.insert", dto);
	}
	
	@Override
	public void update(ReservationDTO dto) {
		sqlSession.update("reservation.update", dto);
	}

	@Override
	public void delete(int idx) {
		sqlSession.delete("reservation.delete", idx);
	}
	
	@Override
	public void delete_all(String userid) {
		sqlSession.delete("reservation.delete_all", userid);
	}
}
