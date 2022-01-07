<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%
	//list페이지에서 수정 버튼을 누르면 update.jsp로 이동되게끔 list a태그에 링크넣음
	//getPerson메소드 사용하여 1명의 정보가 폼안에 들어가 있는 상태를 기본상태로 만들어주기
	//PhoneDao 메모리에 올리기
	PhoneDao phoneDao = new PhoneDao();
	
	//파라미터 값 가져오기 id가 수정을 누른곳에 해당하는 정보의 id를 가진 	
	int pId = Integer.parseInt(request.getParameter("id")); //문자열 숫자로 바꿔주기
	
	//getPerson메소드 사용해서 1명의 정보 가져오기
	PersonVo personvo = phoneDao.getPerson(pId);//주소
	
	//정보에서 이름/폰/회사 정보를 가져와서 변수안에 넣기
	String name = personvo.getName();
	String hp = personvo.getHp();
	String company = personvo.getCompany();
	//int id = personvo.getPersonId();
	
%>

<!--수정할 정보 입력할 폼-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[Phonebook1]</h1>
	
	<h2>전화번호 수정폼</h2>
	
	<p>
		수정화면입니다.<br>
		아래의 값을 수정하고 "수정" 버튼을 클릭하세요
	</p>
	
	<form action="./update.jsp" method="get">
		이름(name): <input type="text" name="name" value="<%=name%>"><br> <!-- value=""이안에다가 정보 넣은 변수 써주기! 자바에서의 값이라서 < %= 이거써줌 -->
		핸드폰(hp): <input type="text" name="hp" value="<%=hp%>"><br>
		회사(company): <input type="text" name="company" value="<%=company%>"><br>
		코드(id): <input type="text" name="id" value="<%=personvo.getPersonId()%>"><br>
		<button type="submit">수정</button>
	</form>
</body>
</html>
