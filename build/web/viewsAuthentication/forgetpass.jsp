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
        <title>Quên mật khẩu</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">  
        <link href="../css/forgetpass.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="bg">
        <div id="header">
            <jsp:include page="../common/header3.jsp" /></div>
        <div class="pt-5">  
            <div class="container">  
                <div class="row">  
                    <div class="col-md-5 mx-auto">  
                        <div class="card card-body" id="formforget">  
                            <form id="submitForm" action="#" method="post">  
                                <div class="form-group required">  
                                    <p id="forgettext">Quên mật khẩu</p>
                                    <input type="email" class="form-control" id="forgetpass" placeholder="Nhập địa chỉ email" required="" name="forgetpass" value="">  
                                </div>                      
                                <div class="form-group pt-1">  
                                    <button class="btn btn-primary btn-block" id="sendemail" type="submit"> Gửi email thiết lập lại mật khẩu </button>  
                                </div>  
                            </form>  
                            <form id="submitForm" action="newpass.jsp" method="post">  
                                <div class="form-group required">  
                                    <p id="forgettext">Nhập Code</p>
                                    <input type="text" class="form-control" id="forgetpass" placeholder="Nhập Code" required="" name="forgetpass" value="">  
                                </div>                      
                                <div class="form-group pt-1">  
                                    <button class="btn btn-primary btn-block" id="confirm" type="submit"> Xác nhận </button>  
                                </div>  
                            </form>
                            <a id="back" href="login.jsp">Quay lại trang đăng nhập</a>
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>  

    </body>
</html>
