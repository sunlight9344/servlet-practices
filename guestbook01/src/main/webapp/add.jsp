<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.poscodx.guestbook.vo.GuestBookVo"%>
<%@page import="com.poscodx.guestbook.dao.GuestBookDao"%>
   
<%
   request.setCharacterEncoding("utf-8");
   	String name = request.getParameter("name");
   	String password = request.getParameter("password");
   	String message = request.getParameter("message");
   	String reg_date = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
   	
   	GuestBookVo vo = new GuestBookVo();
   	vo.setName(name);
   	vo.setPassword(password);
   	vo.setContents(message);
   	vo.setReg_date(reg_date);
   	
   	new GuestBookDao().insert(vo);
   	
   	response.sendRedirect("/guestbook01");
   %>