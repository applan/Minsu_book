package com.spring.mapper;

import java.util.HashMap;
import java.util.List;

import com.spring.domain.BookVO;
import com.spring.domain.ModifyVO;
import com.spring.domain.SearchVO;

public interface BookMapper {
	public int insertBook(BookVO vo); 
	public int deleteBook(String code);
	public int modifyBook(ModifyVO vo);
    public List<BookVO> selectAll();
    public List<BookVO> search(SearchVO vo);
    public List<BookVO> search(HashMap<String, String> map);
}
