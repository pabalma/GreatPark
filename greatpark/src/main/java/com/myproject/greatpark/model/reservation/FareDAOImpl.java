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
		return sqlSession.selectList("faretype.list");
	}
	
	@Override
	public void insert(FareDTO dto) {
		sqlSession.insert("faretype.insert", dto);
	}
	
	@Override
	public FareDTO detail(int code){
		return sqlSession.selectOne("faretype.detail", code);
	}
	
	@Override
	public void update(FareDTO dto){
		sqlSession.update("faretype.update", dto);
	}
	
	@Override
	public void delete(int code){
		sqlSession.delete("faretype.delete", code);
	}
}
