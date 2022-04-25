package com.myproject.greatpark.model.reservation;

import java.util.List;

public interface FareDAO {
	List<FareDTO> list();
	void insert(FareDTO dto);
	FareDTO detail(int code);
	void update(FareDTO dto);
	void delete(int code);
}
