package com.myproject.greatpark.model.reservation;

import java.util.List;

public interface ReservationDAO {
	List<ReservationDTO> list(String userid);
	ReservationDTO detail(int idx);
	void insert(ReservationDTO dto);
	void update(ReservationDTO dto);
	void delete(int idx);
	void delete_all(String userid);
}
