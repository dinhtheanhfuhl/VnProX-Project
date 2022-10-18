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
        <title>Mật khẩu mới</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">  
        <link href="../css/forgetpass.css" rel="stylesheet" type="text/css"/>
        <link href="../css/newpass.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="bg">
        <div id="header">
            <jsp:include page="../common/header3.jsp" /></div>
        <div class="pt-5">  
            <div class="container" >  
                <div class="row">  
                    <div class="col-md-5 mx-auto">  
                        <div class="card card-body" id="form">  
                            <form id="submitForm" action="login.jsp" method="post">  
                                <input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">  
                                <div class="form-group required">  
                                    <p id="nameinput">Mật khẩu mới</p>
                                    <input type="password" class="form-control" placeholder="Nhập khẩu mới" id="forgetpass" required="" name="newpass" value="">  
                                </div>   
                                <div class="form-group required">  
                                    <p id="nameinput">Nhập lại mật khẩu mới</p>
                                    <input type="password" class="form-control" placeholder="Nhập lại mật khẩu mới" id="forgetpass" required="" name="enteragain" value="">  
                                </div> 
                                <div class="form-group pt-1">  
                                    <button class="btn btn-primary btn-block" id="confirm" type="submit"> Xác nhận </button>  
                                </div>  
                            </form>  

                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>  

    </body>
</html>
