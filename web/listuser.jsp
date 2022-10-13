<%-- 
    Document   : listproductstatus
    Created on : Oct 10, 2022, 9:49:45 PM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách người dùng</title>
        <link href="css/listproductstatus.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="bg">
        <jsp:include page="common/header2.jsp" />
        <div id="sidebarpos">
            <jsp:include page="common/sidebar.jsp" />
        </div>
        <div id="navbar">
            <a id="qltext" href="#">Quản lý</a>
            <p id="arrow">></p>
            <a id="producttext" href="#">Danh sách người dùng</a>
        </div>

        <div id="navbar2">
            <form id="form" method="post">
                <table>
                    <tr>
                        <td>Tên người dùng</td>
                        <td>Tên nhà cung cấp</td>
                        <td>Khu vực</td>
                        <td>Số điện thoại</td>
                        <td>Email</td>
                    </tr>
                    <tr>
                        <td><input id="inputfield" placeholder="Lê Văn A" class="form-control"></td>
                        <td><input id="inputfield" placeholder="Nông Sản D" class="form-control"></td>
                        <td><div id="drd">
                                <div id="drdinput" class="dropdown">
                                    <button class="dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        --Tất cả tỉnh/TP--
                                    </button>
                                    <div id="areadrop" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">Thành phố Hồ Chí Minh</a>
                                        <a class="dropdown-item" href="#">Bà Rịa Vũng Tàu</a>
                                    </div>
                                </div>
                            </div></td>
                        <td><input id="inputfield" placeholder="Nhập số điên thoại" class="form-control"></td>
                        <td><input id="inputfield" placeholder="Nhập email" class="form-control"></td>
                        <td><button id="btnsearch" id="inputfield" type="submit"><i class="fa fa-search"></i></button></td>
                    </tr>
                </table>
            </form>
        </div>

        <div id="tb2" class="container">
            <table id="tb4">
                <tr>

                <div id="drdinput2" class="dropdown">
                    <p id="sorttext">Sắp xếp theo</p>
                    <div class="form-group required">  
                        <select name="areasort" id="areasort">
                            <option value="male">Khu vực</option>
                            <option value="female">Vị trí</option>
                        </select>
                    </div>
                </div>
                </tr>
            </table>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">&nbsp;</th>
                        <th scope="col">STT</th>
                        <th scope="col">Tên người dùng</th>
                        <th scope="col">Tên nhà cung cấp</th>
                        <th scope="col">Khu vực</th>
                        <th scope="col">Số điện thoại</th>
                        <th scope="col">Vị trí</th>
                        <th scope="col">Email</th>
                        <th scope="col">Chi tiết</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="navbar3">
            <div id="pagination">
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
            </div>
            <p id="msgtext2">Hiển thị 10 trong 23 bản ghi</p>
        </div>
    </body>
</html>
