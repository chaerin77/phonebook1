<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>

<%
	//PhoneDao를 메모리에 올린다.
	PhoneDao phoneDao = new PhoneDao();

    //////////////////////////////////////
    ///저장관련
    //////////////////////////////////////
    
    //파라미터값 가져오기
	String name = request.getParameter("name");
 	String hp = request.getParameter("hp");
 	String company = request.getParameter("company");

 	//테스트
 	System.out.println(name);
 	System.out.println(hp);
 	System.out.println(company);
 	
 	//전송된 값을 vo객체로 만든다
 	PersonVo personVo = new PersonVo(name,hp,company);
 	//System.out.println(personVo.toString());
 	
 	//PhoneDao를 메모리에 올린다.
    //PhoneDao phoneDao = new PhoneDao(); 맨위로 빼놨음
 	
 	//저장
    phoneDao.personInsert(personVo);
    
    //리다이렉트
    response.sendRedirect("./list.jsp");
    
    //////////////////////////////////////
    ///리스트 가져오기 관련 이거를 리다이렉트로 처리하기로함
    //////////////////////////////////////
 	
 	//전체리스트를 가져온다
 	//List<PersonVo> personList = phoneDao.getPersonList();
 	
 	//html하고 섞는다 테이블그려서 정보 뿌리기
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% //http://localhost:8088/phonebook1/list.jsp 기능 보내기%>
</body>
</html>



<%
/* 주석처리하려고 자바로감쌈
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	저장 기능 --insert 주소창에 쳤을때 잘 뜨는지 확인해보려고 썼던것
</body>	
</html>
*/%>
