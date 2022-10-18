<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2022, 2:48:29 PM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thay đổi mật khẩu</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">  
        <link href="../css/changepass.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="bg">
        <jsp:include page="../common/header2.jsp" />
        <div id="sidebarpos">
            <jsp:include page="../common/sidebar.jsp" />
        </div>
        <div id="navbar">
                <a href="#">Tài khoản</a>
                <p id="arrow">></p>
                <a id="changepasstext" href="#">Đổi mật khẩu</a>
            </div>
        <div class="pt-5">  
            <div class="container" >  
                
                <div class="row" id="changepassform">  
                    <div class="col-md-5 mx-auto">  
                        <div class="card card-body" id="inside">  
                            <h3 id="changepass">Đổi mật khẩu</h3>
                            <form action="#" method="post">  
                                <div id="input" >  
                                    <h7>Mật khẩu cũ</h7>
                                    <input type="password" class="form-control" placeholder="Nhập mật khẩu cũ" required="" minlength="5" maxlength="12" id="oldpass" name="oldpass" value="">  
                                </div>    
                                <div id="input" >  
                                    <h7>Mật khẩu mới</h7>
                                    <input type="password" class="form-control" placeholder="Nhập mật khẩu mới" required="" minlength="5" maxlength="12" id="newpassword" name="newpassword" value="">  
                                </div> 
                                <div id="input" >  
                                    <h7>Nhập lại mật khẩu mới</h7>
                                    <input type="password" class="form-control" placeholder="Nhập lại mật khẩu mới" required="" minlength="5" maxlength="12" id="newpasswordagain" name="newpasswordagain" value="">  
                                </div> 
                                <div class="form-group pt-1">  
                                    <button class="btn btn-primary btn-block" id="cancel" type="submit" > Huỷ </button>  
                                </div>  
                                <div class="form-group pt-1">  
                                    <button class="btn btn-primary btn-block" id="buttonSave" type="submit" > Lưu </button>  
                                </div>  
                            </form>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>  
    </body>
</html>
