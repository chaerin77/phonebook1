<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.PhoneDao" %>  
<%@ page import="com.javaex.vo.PersonVo" %>
    
<%
	PhoneDao phoneDao = new PhoneDao();
    List<PersonVo> personList = phoneDao.getPersonList();
    //이 코드가 있어야 밑에서 personList.size 쓴 for문쓸수있는것
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[phonebook1]</h1>
	
	<h2>*전화번호 리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
	
	<%for(int i=0; i<personList.size(); i++){
	%>	
		<table border="1">
	  	<tr>
	     	<td>이름(name)</td>
	     	<td><%=personList.get(i).getName()%></td> 
	  	</tr>
	  	<tr>
	     	<td>핸드폰(hp)</td>
	     	<td><%=personList.get(i).getHp()%></td>
	  	</tr>
	  	<tr>
	     	<td>회사(company)</td>
	     	<td><%=personList.get(i).getCompany()%></td>
	  	</tr>
	  	<tr>
	     	<td><a href="./update.jsp?id=<%=personList.get(i).getPersonId()%>">[수정]</a>
	     	</td>
	     	
	     	<td><a href="./delete.jsp?id=<%=personList.get(i).getPersonId()%>">[삭제]</a></td>
	     	<%//list페이지에서 수정 버튼을 누르면 update.jsp- id값이 내가누른곳의 값인걸로 이동되게끔..하는.
	     	  //파라미터가 ? 뒤에있는것들이잕아 id값이 내가고른 저녀석인것, 이름이저녀석,등등으로..주소창에서 update.jsp?id=머시기 인곳으로 이동하게되는거니까!%>
	  	</tr>
		</table>
		<br>
	<% 
	}
	%>	
	
	<% //<a href="http://localhost:8088/phonebook1/writeForm.jsp">전화번호 등록폼</a> %>
    <a href="./writeForm.jsp">전화번호 등록폼</a>	<% //현재위치에서 ./ 같은곳에있어서 이렇게쓰는거 가능%>
</body>
</html>