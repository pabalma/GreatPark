package com.myproject.greatpark.model.cart;

import java.util.List;

public interface CartDAO {
	List<CartDTO> list(String userid);
}
