package com.myproject.greatpark.model.product;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ProductDTO> list() {
		return sqlSession.selectList("product.list");
	}

}
