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
        <title>Đăng nhập</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">  
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <img src="image/pexels-jane-doan-1128678.jpg" height="100%" width="100%;" alt=""/>
        <div class="container">  
            <div class="row" >  
                <div class="col-md-5 mx-auto" id="loginform">  
                    <div class="card card-body" id="inside">  
                        <h1> VnProX </h1>  
                        <p id="slogan">Sàn trao đổi nông sản Việt</p>
                        <p id="logintext">Đăng nhập</p>
                        <form id="submitForm" action="home.jsp" method="post">  
                            <input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">  
                            <div class="form-group required">  
                                <input type="text" class="form-control" placeholder="Email" id="username" required="" name="username" value="" oninvalid="this.setCustomValidity('Vui lòng nhập thông tin bằng định dạng email');" onchange="try{setCustomValidity('');}catch(e){};">  
                            </div>                      
                            <div class="form-group required">  
                                <input type="password" class="form-control" placeholder="Mật khẩu" required="" id="password" name="password" value="" oninvalid="this.setCustomValidity('Vui lòng nhập thông tin này');" onchange="try{setCustomValidity('');}catch(e){};">  
                            </div>  
                            <div class="form-group mt-4 mb-4">  
                                <div class="custom-control custom-checkbox">  
                                    <input type="checkbox" class="custom-control-input" id="remember-me" name="remember-me" data-parsley-multiple="remember-me">  
                                    <label class="custom-control-label" id="remember" for="remember-me"> Lưu thông tin đăng nhập </label>  
                                </div>  
                            </div>  
                            <div class="form-group pt-1">  
                                <button id="loginbutton" type="submit"> Đăng nhập </button>  
                            </div>  
                        </form>  
                        <p class="small-xl pt-3 text-center">  
                            <a id="forgetpass" href="forgetpass.jsp"> Quên mật khẩu </a>  
                            <a id="regisnow" href="register.jsp">| Đăng ký ngay! </a>  
                        </p>  
                    </div>  
                </div>  
            </div>  
        </div>  
    </body>
</html>
