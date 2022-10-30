package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.TableDTO;

@Mapper("tableListMapper")
public interface ITableMapper {
	
	List<TableDTO> getTableList();
	
	List<TableDTO> getDetail(TableDTO dto);
	
	void insertbsiness(TableDTO dto);
}
