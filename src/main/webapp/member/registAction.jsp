<%@page import="regist.RegistDAO"%>
<%@page import="regist.RegistDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//폼값받기
String name = request.getParameter("name");
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String tel = request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3");
String mobile = request.getParameter("mobile1")+"-"+request.getParameter("mobile2")+"-"+request.getParameter("mobile3");
String email = request.getParameter("email_1")+"@"+request.getParameter("email_2");
String email_check = request.getParameter("email_check");
String zipcode = request.getParameter("zipcode");
String addr1 = request.getParameter("addr1");
String addr2 = request.getParameter("addr2");

//DTO객체에 저장하기
RegistDTO dto = new RegistDTO();
dto.setName(name);
dto.setId(id);
dto.setPass(pass);
dto.setTel(tel);
dto.setMobile(mobile);
dto.setEmail(email);
dto.setEmail_check(email_check);
dto.setZipcode(zipcode);
dto.setAddr1(addr1);
dto.setAddr2(addr2);

//DAO객체 생성 및 insert 처리
RegistDAO dao = new RegistDAO(application);
int result = dao.registInsert(dto);
if(result==1){
	response.sendRedirect("../main/main.jsp");
}





%>