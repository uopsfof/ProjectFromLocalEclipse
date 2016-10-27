<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.emp.model.*"%>

<%
 // List<EmpVO> list = (List<EmpVO>)session.getAttribute("list"); //EmpServlet.java(Concroller), 存入session的list物件
%> 

<%-- 以下等同第7行--%>
<jsp:useBean id="list" scope="session" type="java.util.List" />


<html>
<head>
<title>所有員工資料 - listAllEmp2_getFromSession.jsp</title>
</head>
<body bgcolor='white'>

<table border='1' cellpadding='5' cellspacing='0' width='700'>
	<tr bgcolor='#CCCCFF' align='center' valign='middle' height='20'>
		<td>
		<h3>所有員工資料共<font color=red><%=list.size()%></font>筆 - listAllEmp2_getFromSession.jsp</h3>
		<a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a>
		</td>
	</tr>
</table>

<table border='1' bordercolor='#CCCCFF' width='700'>
	<tr>
		<th>員工編號</th>
		<th>員工姓名</th>
		<th>職位</th>
		<th>雇用日期</th>
		<th>薪水</th>
		<th>獎金</th>
		<th>部門</th>
	</tr>
	<%@ include file="page1.file" %> 
	<c:forEach var="empVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		<tr align='center' valign='middle'>
			<td>${empVO.empno}</td>
			<td>${empVO.ename}</td>
			<td>${empVO.job}</td>
			<td>${empVO.hiredate}</td>
			<td>${empVO.sal}</td>
			<td>${empVO.comm}</td>
			<td>${empVO.deptno}</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>
