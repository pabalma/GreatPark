package com.myproject.greatpark.model.cart;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAOImpl implements CartDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<CartDTO> list(String userid) {
		return sqlSession.selectList("cart.list", userid);
	}

}
