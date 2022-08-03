<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
   <td>Sno</td>
   <td>number</td>
   <td>content</td>
   <td>date</td>
</tr>
<tr>
	<c:forEach items="${talks}" var="talk">
	<tr>
		<td>${talk.Sno }</td>	
		<td>${talk.number}</td>	
		<td>${talk.content }</td>	
		<td>${talk.date }</td>	
	</tr>
	</c:forEach>
</tr>
</table>
</body>
</html>