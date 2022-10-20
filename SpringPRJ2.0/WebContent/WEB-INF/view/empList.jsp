<%@page import="poly.dto.EmpDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	List<EmpDTO> rList = (List<EmpDTO>)request.getAttribute("rList");   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
	<thead>
	<tr>
		<td>사번(EMPNO)</td>
		<td>사원이름(ENAME)</td>
		<td>직책(JOB)</td>
		<td>매니저(MGR)</td>
		<td>고용일(HIREDATE)</td>
		<td>월급(SAL)</td>
		<td>보너스(COMM)</td>
		<td>부서번호(DEPTNO)</td>
		
	</tr>
	</thead>
	<tbody>
	<%for (EmpDTO e : rList){ %>
	<tr>
		<td><%= e.getEmpno() %></td>
		<td><%= e.getEname() %></td>
		<td><%= e.getJob() %></td>
		<td><%= e.getMgr() %></td>
		<td><%= e.getHiredate() %></td>
		<td><%= e.getSal() %></td>
		<td><%= e.getComm() %></td>
		<td><%= e.getDeptno() %></td>
	</tr>
	<%} %>
	</tbody>


</table>

</body>
</html>