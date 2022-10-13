<%-- 
    Document   : accountinfo
    Created on : Oct 7, 2022, 4:25:21 PM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chỉnh sửa thông tin tài khoản</title> 
        <link href="css/accountinfo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="bgpage">
        <div id="header">
            <jsp:include page="common/header2.jsp" /></div>
        <div id="sidebarpos">
            <jsp:include page="common/sidebar.jsp" />
        </div>
        <div id="navbar">
            <a href="#">Tài khoản</a>
            <p id="arrow">></p>
            <a href="accountinfo.jsp">Thông tin tài khoản</a>
            <p id="arrow">></p>
            <a id="infornav" href="#">Chỉnh sửa thông tin tài khoản</a>
        </div>
        <div class="row" id="forminfo">  
            <div class="col-md-5 mx-auto">
                <div id="formpos">
                    <p id="infotext">Thông tin cơ bản</p>

                    <form id="submitForm" action="#" method="post">  
                        <hr id="line1">
                        <table>
                            <tr>
                                <td> <p>Tên người dùng</p></td>
                                <td><div class="form-group required">  
                                        <input type="text" class="form-control" id="username" required="" name="username" value="">
                                    </div>  </td>
                            </tr>
                            <tr>
                                <td><p>Ngày sinh<p></td>
                                <td><div class="form-group required">  
                                        <input type="date" class="form-control" id="dateofbirth" required="" name="dateofbirth" value="">  
                                    </div> </td>

                            </tr>
                            <tr>
                                <td><p>Giới tính<p></td>
                                <td><div class="form-group required">  
                                        <select name="gender" id="gender">
                                            <option value="male">Nam</option>
                                            <option value="female">Nữ</option>
                                            <option value="other">Khác</option>
                                        </select>
                                    </div> </td>

                            </tr>
                            <tr>
                                <td><p>Email</p></td>
                                <td><div class="form-group required">  
                                        <input type="email" class="form-control"  id="email" required="" name="email" value="">  
                                    </div> </td>

                            </tr>
                            <tr>
                                <td><p>Số điện thoại</p></td>
                                <td><div class="form-group required">  
                                        <input type="text" class="form-control"  id="phonenumber" required="" name="phonenumber" value="">  
                                    </div> </td>

                            </tr>
                        </table>
                        <div id="avatarpos">
                            <svg xmlns="http://www.w3.org/2000/svg" id="avatar" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                            <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" id="camera" width="16" height="16" fill="currentColor" class="bi bi-camera" viewBox="0 0 16 16">
                            <path d="M15 12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h1.172a3 3 0 0 0 2.12-.879l.83-.828A1 1 0 0 1 6.827 3h2.344a1 1 0 0 1 .707.293l.828.828A3 3 0 0 0 12.828 5H14a1 1 0 0 1 1 1v6zM2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2z"/>
                            <path d="M8 11a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5zm0 1a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM3 6.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z"/>
                            </svg>
                            <p id="avatartext">Ảnh đại diện</p>
                        </div>
                        <p id="kinhdoanhtext">Thông tin kinh doanh</p>
                        <hr id="line2">
                        <table id="kinhdoanhform">
                            <tr>
                                <td><p>Tên cửa hàng</p></td>
                                <td><div class="form-group required">  
                                        <input type="text" class="form-control"  id="namestore" required="" name="namestore" value="">  
                                    </div> </td>

                            </tr>
                            <tr>
                                <td><p>Địa chỉ cơ sở chính</p></td>
                                <td><div class="form-group required">  
                                        <input type="text" class="form-control" id="address" required="" name="address" value="">  
                                    </div> </td>
                            </tr>
                            <tr>
                                <td><p>Giấy phép kinh doanh<p></td>
                                <td><div class="form-group required">
                                        <p id="filetext" onclick="document.getElementById('getFile').click()"> + Thêm giấy phép </p>
                                        <input type='file' id="getFile" accept=".doc,.docx,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document">
                                    </div> </td>
                            </tr>
                        </table> 
                         
                        <div id="btnpos">
                            <div class="form-group pt-1">  
                                <button id="cancel" type="submit"> Huỷ </button>
                            </div>  
                            <div class="form-group pt-1">  
                                <button id="save" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" type="submit"> Lưu </button>  
                                <!-- 
                                    <div class="modal fade" id="myModal" role="dialog">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button id="close" type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 id="alert" class="modal-title">Thông báo</h4>
                                            </div>
                                            <div class="modal-body">
                                                <p id="message">Lưu thành công.</p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>-->
                            </div>  
                        </div>
                        </form>
                </div>  
            </div>
    </body>
</html>
