<%-- 
    Document   : newjsp
    Created on : Sep 26, 2022, 10:36:09 PM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <header id="header">
            <div class="container">
                <div class="row">
                    <div id="logo" class="col-sm-2"><a href="HomeController" id="logotext">VnProX</a></div>
                    <div id="name" class="col">Sàn trao đổi nông sản Việt</div>
                    <div class="col">
                        <form id="searchpos" action="/form/submit" method="GET"> 
                            <input disabled="" style="background-color: #359640;" >
                        </form>
                    </div>
                    <div class="col"> <div id="bell"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16">
                            <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z"/>
                            </svg></div></div>
                    <div id="account">
                        <div class="dropdown">
                            <button class="dropbtn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                </svg>
                                <svg id="arrowdown" xmlns="http://www.w3.org/2000/svg" width="9" height="9" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                                <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
                                </svg>
                            </button>
                            <div id="dropdowncont" class="dropdown-content">
                                <a href="#">Tài khoản</a>
                                <a href="changepass.jsp">Đổi mật khẩu</a>
                                <a href="#">Đăng xuất</a>
                            </div>
                        </div>
                    </div></div>
        </header>
    </body>
</html>
