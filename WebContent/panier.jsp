<%@page import="panier.metier.Panier"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Votre panier</title>
</head>
<body>
	<h2>Contenu du panier</h2>
	<ul>
	<c:forEach items="${sessionScope.panier.articles }" var="article">
		<li>${article }</li>
	</c:forEach>
	</ul>
</body>
</html>