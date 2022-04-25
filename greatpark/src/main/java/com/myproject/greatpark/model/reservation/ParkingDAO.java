package com.myproject.greatpark.model.reservation;

import java.util.List;

public interface ParkingDAO {
	List<ParkingDTO> list();
	void insert(ParkingDTO dto);
	ParkingDTO detail(String code);
	void update(ParkingDTO dto);
	void delete(String code);
}
