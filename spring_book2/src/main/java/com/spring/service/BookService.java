package com.spring.service;

import java.util.HashMap;
import java.util.List;

import com.spring.domain.BookVO;
import com.spring.domain.ModifyVO;
import com.spring.domain.SearchVO;

public interface BookService {
	public int insertBook(BookVO vo); 
	public int deleteBook(String code);
	public int modifyBook(ModifyVO vo);
	public List<BookVO> selectAll();
	public List<BookVO> search(SearchVO vo);
	public List<BookVO> search(HashMap<String, String> map);
	 
}
