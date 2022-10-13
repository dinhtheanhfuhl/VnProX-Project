<%-- 
    Document   : home
    Created on : Sep 23, 2022, 9:19:20 AM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sàn nông sản</title>
    </head>
    <body id="bgpage">
        <jsp:include page="common/header.jsp" />
        <div id="sidebarpos">
            <jsp:include page="common/sidebar.jsp" />
        </div>
       <div id="contentpos">
            <jsp:include page="content.jsp" />
        </div>
        <jsp:include page="common/footer.jsp" />

    </body>

</html>
