<%-- 
    Document   : productdetail
    Created on : Sep 30, 2022, 7:49:41 AM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết nông sản</title>
        <link href="css/productdetail.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <jsp:include page="common/header.jsp" />
        <div id="sidebarpos">
            <jsp:include page="common/sidebar.jsp" />
        </div>
        <div id="navbar">
            <a id="qltext" href="#">Quản lý</a>
            <p id="arrow">></p>
            <a id="producttext" href="#">Sản phẩm</a>
        </div>
    </body>
</html>
