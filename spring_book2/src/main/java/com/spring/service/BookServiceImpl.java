package com.spring.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BookVO;
import com.spring.domain.ModifyVO;
import com.spring.domain.SearchVO;
import com.spring.mapper.BookMapper;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookMapper mapper;
	
	@Override
	public List<BookVO> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public int insertBook(BookVO vo) {
		return mapper.insertBook(vo);
	}

	@Override
	public int deleteBook(String code) {
		return mapper.deleteBook(code);
	}
	
	@Override
	public int modifyBook(ModifyVO vo) {
	//public int modifyBook(String code, int price) {
//		HashMap<String , Object> map = new HashMap<String, Object>();
//		map.put("code", code);
//		map.put("price", price);  인자 두개로 받을 경우 HashMap을 이용해서 넘겨주면 된다.
		// return mapper.modify(map);
		return mapper.modifyBook(vo);
	}

	@Override
	public List<BookVO> search(SearchVO vo) {
		return mapper.search(vo);
	}

	@Override
	public List<BookVO> search(HashMap<String, String> map) {
		return mapper.search(map);
	}
	


}
