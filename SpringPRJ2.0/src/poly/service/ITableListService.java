package poly.service;

import java.util.List;

import poly.dto.TableDTO;

public interface ITableListService {
	
	List<TableDTO> getTableList();
	
	List<TableDTO> getDetail(TableDTO dto);
	
	void insertbsiness(TableDTO dto);
 }
