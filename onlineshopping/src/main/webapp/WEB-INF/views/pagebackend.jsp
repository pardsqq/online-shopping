<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="contextRoot" value="${ pageContext.request.contextPath }" />

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />


<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Backend Shopping - ${title}</title>
    
    <script>
    	window.menu = '${title}';
    	window.contextRoot = '${contextRoot}';
    </script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">.
	    
	    
	<!-- Bootstrap DataTables -->
	<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
   	<%@include file="./shared/navbar.jsp" %>
   	
    <!-- Page Content -->
	<!-- Loading Home Content -->
	<c:if test="${userClickHome == true }">
		<%@include file="home.jsp" %>
	</c:if>	

	<c:if test="${userClickAbout == true }">
		<%@include file="about.jsp" %>
	</c:if>	
	
	<c:if test="${userClickContact == true }">
		<%@include file="contact.jsp" %>
	</c:if>	
	
	<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
		<%@include file="listProducts.jsp" %>
	</c:if>	
	
	<c:if test="${userClickShowProduct == true}">
		<%@include file="singleProduct.jsp" %>
	</c:if>	
	
	<c:if test="${userClickManageProduct == true}">
		<%@include file="manageProduct.jsp" %>
	</c:if>	
	
    <!-- Footer -->
    <%@include file="./shared/footer.jsp" %>
    
    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.js"></script>
    <script src="${js}/bootstrap.bundle.min.js"></script>
	<script src="${js}/myapp.js"></script>
	
	<!-- DataTable Plugin -->
	<script src="${js}/jquery.dataTables.js"></script>
	
	<!-- DataTable Bootstrap Script -->
	<script src="${js}/dataTables.bootstrap.js"></script>
  </body>

</html>