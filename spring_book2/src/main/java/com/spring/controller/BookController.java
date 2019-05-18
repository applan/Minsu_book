package com.spring.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.domain.BookVO;
import com.spring.domain.SearchVO;
import com.spring.service.BookService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BookController {
   String resultMessage = "";
	@Autowired
	private BookService service;
	
	// select 요청에 응답하는 controller 만들기
	@GetMapping("select")
	public String selectPage(Model model) {
		log.info("select 호출");
		List<BookVO> list = service.selectAll();
		model.addAttribute("list",list);
		// request랑 같음 = 하지만 지우는 기능은 없고
		// book_modify.jsp에서 26~37주석 풀고 하면
		// 나오는데 그 이유는 우리가 include를 한 상황이라서 
		// 지금 우리는 한 페이지 안에서 다른 페이지를 보여주는 상황이라서 그렇다
		// 페이지 이동하면 없어짐 ( 다시 그 페이지를 가면 )
		
		
		return "book_select_all";
	}
	@PostMapping("insert")
	public String insertPage(BookVO vo,Model model,HttpSession session) {
		log.info("insert 호출");
		resultMessage = "등록 ";
		int insertResult = service.insertBook(vo);
		if(insertResult >0) {
			session.setAttribute("tab_select", "select");
	        session.setAttribute("result", "true");
		}else {
			session.setAttribute("tab_select", "select");
            session.setAttribute("result", "false");
            session.setAttribute("resultMessage", resultMessage);
		}
		return "redirect:/";
		// book_insert.jsp 넘어오는 데이터 가져와서 입력하기
		
	}
	@PostMapping("remove")
	public String delete(String code,HttpSession session) {
		log.info("delete 호출");
		resultMessage = "삭제 ";
		int deleteResult = service.deleteBook(code);
		if(deleteResult >0) {
			session.setAttribute("result", "true");
			return "redirect:select";
		}else {
			session.setAttribute("tab_select", "delete");
            session.setAttribute("result", "false");
            session.setAttribute("resultMessage", resultMessage);
		}
		return "redirect:/";
	}
	
	@PostMapping("modify")
	public String modify(String code,HttpSession session) {
	// public String delete(String code,int price,Model model) {	
		resultMessage = "수정 ";
		log.info("modify 호출");
		int modifysResult = service.deleteBook(code);
		//int modifyResult = service.modifyBook(code,price);
		if(modifysResult >0) {
			session.setAttribute("result", "true");
			return "redirect:select";
		}else {
			session.setAttribute("tab_select", "modify");
            session.setAttribute("result", "false");
            session.setAttribute("resultMessage", resultMessage);
		}
		return "redirect:/";
	}
	
//	@PostMapping("search")
//	public String modifyString(SearchVO vo,Model model,HttpSession session) {
//		resultMessage = "검색 ";
//		log.info("search 호출");
//		List<BookVO> list = service.search(vo);
//		if(!list.isEmpty()) {
//			model.addAttribute("list_search", list);
//			return "book_select_search";
//		}else {
//			session.setAttribute("result", "false");
//			session.setAttribute("resultMessage", resultMessage);
//			return "redirect:select";
//		}
//	}
	
	@PostMapping("/search") // vo가 아닌 HashMap형태로 넘기기
	public String bookSearch(String criteria,String keyword,Model model) {
		log.info("검색 리스트 호출");
		
		HashMap<String, String> map = new HashMap<>();
		map.put("criteria", criteria);
		map.put("keyword", keyword);
		List<BookVO> searchList= service.search(map);
		model.addAttribute("list_search", searchList);
		return "book_select_search";
	}

}
