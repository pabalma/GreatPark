package com.myproject.greatpark.model.info;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


//꼭 필요1
@Repository
public class RestDAOImpl implements RestDAO {

//꼭 필요2	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<RestDTO> list() {
		return sqlSession.selectList("information.list");
	}


}
