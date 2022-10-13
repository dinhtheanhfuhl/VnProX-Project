<%-- 
    Document   : sidebar
    Created on : Sep 23, 2022, 8:40:07 PM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>JSP Page</title>
        <link href="css/sidebar.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    </head>
    <body>
        <div id="mySidenav" class="sidenav">
            <h2 id="menutext">Menu <span id="closearrow" href="javascript:void(0)" class="closebtn" onclick="closeNav()">&#8656;</span></h2>
            <div id="d1" class="dropdown">
                <a href="login.jsp"><i class='fas fa-user-friends'></i>&nbsp;&nbsp;Tài khoản<i style="float: right;margin-right: 20px;" class='fas fa-angle-down'></i> </a>
                <div id="drdcontent" class="dropdown-content">
                <a href="#">Thông tin tài khoản</a>
                <a href="#">Đổi mật khẩu</a>
            </div>
            </div>
            <div id="d1" class="dropdown">
                <a href="HomeController"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-grid-fill" viewBox="0 0 16 16">
                    <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zm8 0A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm-8 8A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm8 0A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3z"/>
                    </svg>&nbsp;&nbsp;Nông sản</a>
            </div>
            <div id="d1" class="dropdown">
                <a href="trade.jsp"><i class='fa fa-cube'></i>&nbsp;&nbsp;&nbsp;Quản lý<i style="float: right;margin-right: 20px;" class='fas fa-angle-down'></i></a>
                <div id="drdcontent" class="dropdown-content">
                    <a href="#">Danh mục</a>
                    <a href="#">Sản phẩm</a>
                    <a href="#">Danh sách người dùng</a>
                </div>
            </div>
        </div>
        <div id="main">
            <span id="openarrow" onclick="openNav()">&#8658 </span>
        </div>
        </br>
        <div class="iconclosebar" id="myDIV">
            <a id="iconclose" class="act" href="#"><i class='fas fa-user-friends'></i></a>
            </br>
            <a id="iconclose" class="act active" href="HomeController"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-grid-fill" viewBox="0 0 16 16">
                <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zm8 0A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm-8 8A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm8 0A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3z"/>
                </svg></a>
            </br>
            <a id="iconclose" class="act" href="#"><i class='fa fa-cube'></i></a>
        </div>
        <script>
            function openNav() {
                document.getElementById("mySidenav").style.width = "247px";
                document.getElementById("main").style.marginLeft = "250px";
                document.getElementById("openarrow").style.display = "none";

            }
            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
                document.getElementById("main").style.marginLeft = "0";
                document.getElementById("openarrow").style.display = "block";
            }
        </script>
        <script>
            var header = document.getElementById("myDIV");
            var btns = header.getElementsByClassName("act");
            for (var i = 0; i < btns.length; i++) {
                btns[i].addEventListener("click", function () {
                    var current = document.getElementsByClassName("active");
                    current[0].className = current[0].className.replace(" active", "");
                    this.className += " active";
                });
            }
        </script>
    </body>
</html>
