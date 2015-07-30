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
	<%
		Panier panier;
		if(session.getAttribute("panier")==null){
			out.print("pas de panier");
			panier = new Panier();
			session.setAttribute("panier", panier);
		}
		else{
			out.print("deja un panier");
			panier = (Panier) session.getAttribute("panier");
		}
	%>
	
	<ul>
		<li><a href="index.jsp?art=Article_1">Article 1</a></li>
		<li><a href="index.jsp?art=Article_2">Article 2</a></li>
		<li><a href="index.jsp?art=Article_3">Article 3</a></li>
		<li><a href="panier.jsp">Voir panier</a></li>
	</ul>
	
	<%
		if(request.getParameter("art")!=null){
			String article = request.getParameter("art");
			out.print(article + " ajouté au panier");
			panier.add(article);
		}
	%>
</body>
</html>