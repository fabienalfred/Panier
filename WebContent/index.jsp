<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Remplir panier</title>
</head>
<body>
	<ul>
		<li><a href="PanierServlet?action=com&art=Article_1">Article
				1</a></li>
		<li><a href="PanierServlet?action=com&art=Article_2">Article
				2</a></li>
		<li><a href="PanierServlet?action=com&art=Article_3">Article
				3</a></li>
	</ul>
	<a href="PanierServlet?action=show">Voir le panier</a>
	<br />
	<br />
	<c:forEach items="${paramValues.art }" var="value">
		<c:out value="${value } ajouté au panier"></c:out>
	</c:forEach>
</body>
</html>