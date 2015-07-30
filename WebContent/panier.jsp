<%@page import="session.Panier"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Contenu du panier</h2>
	<%
		Panier panier = (Panier) session.getAttribute("panier");
	%>
		<ul>
		<%
			for(String article : panier.getArticles()){
		%>
				<li>
				<%
					out.print(article);
				%>
				</li>
		<%
			}
	%>
		</ul>
</body>
</html>