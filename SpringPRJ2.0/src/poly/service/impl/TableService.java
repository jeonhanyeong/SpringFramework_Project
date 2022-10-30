package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.TableDTO;
import poly.persistance.mapper.ITableMapper;
import poly.service.ITableListService;


@Service("TableService")
public class TableService implements ITableListService{

	@Resource(name="tableListMapper")
	ITableMapper tablelistMapper;
	
	@Override
	public List<TableDTO> getTableList() {
		// TODO Auto-generated method stub
		return tablelistMapper.getTableList();
	}
	
	public List<TableDTO> getDetail(TableDTO dto){
		return tablelistMapper.getDetail(dto);
	}
	
	public void insertbsiness(TableDTO dto){
		
	}

}
