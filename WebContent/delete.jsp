<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%
	//PhoneDao 메모리에 올리기(delete메소드사용해야함)
	PhoneDao phoneDao = new PhoneDao();
	
	//try{ 예외처리 했어야 됐는데 지금은 또 안해도 돌아감..
	//파라미터 값 가져오기
	String personId = request.getParameter("id");
    int pId = Integer.parseInt(personId);
    phoneDao.personDelete(pId);
	//}catch (NumberFormatException e){
		
	//}	
	
	//phoneDao.personDelete(pId);
	
	response.sendRedirect("./list.jsp");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	삭제페이지
</body>
</html>