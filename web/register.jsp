<%-- 
    Document   : regsiter.jsp
    Created on : Oct 05, 2022, 7:48:29 PM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">  
        <link href="css/register.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <img src="image/pexels-pineapple-supply-co-139259.jpg" height="100%" width="100%" alt=""/>  
        <div id="headertext">
            <h3> Đăng Ký Tài Khoản </h3>  
            <h3> &emsp;&emsp;&emsp;&emsp;Nhà Cung Cấp </h3> </div>
        <div class="vertical"></div>
        <div class="container">  
            <div class="row" id="allform">  
                <div class="col-md-5 mx-auto" id="forminfo">  
                    <p id="infotext">Thông tin cơ bản</p>
                    <form id="submitForm" action="#" method="post">  
                        <table>
                            <tr>
                                <td> <p>Tên người dùng</p></td>
                                <td><div class="form-group required">  
                                        <input type="text" class="form-control" id="username" required="" name="username" value="" oninvalid="this.setCustomValidity('Vui lòng nhập thông tin này');" onchange="try{setCustomValidity('');}catch(e){};">
                                    </div></td>
                            </tr>
                            <tr>
                                <td><p>Ngày sinh<p></td>
                                <td><div class="form-group required">  
                                        <input type="date" class="form-control" id="dateofbirth" required="" name="dateofbirth" value="" oninvalid="this.setCustomValidity('Vui lòng nhập thông tin này');" onchange="try{setCustomValidity('');}catch(e){};">  
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
                                        <input type="email" class="form-control"  id="email" required="" name="email" value="" oninvalid="this.setCustomValidity('Vui lòng nhập thông tin này bằng định dạng email');" onchange="try{setCustomValidity('');}catch(e){};">  
                                    </div> </td>

                            </tr>
                            <tr>
                                <td><p>Mật khẩu</p></td>
                                <td><div class="form-group required">  
                                        <input type="password" class="form-control"  id="password" required="" name="password" value="" oninvalid="this.setCustomValidity('Vui lòng nhập thông tin này');" onchange="try{setCustomValidity('');}catch(e){};">  
                                    </div> </td>

                            </tr>
                            <tr>
                                <td><p>Số điện thoại</p></td>
                                <td><div class="form-group required">  
                                        <input type="text" class="form-control"  id="phonenumber" required="" name="phonenumber" value="" oninvalid="this.setCustomValidity('Vui lòng nhập thông tin này');" onchange="try{setCustomValidity('');}catch(e){};">  
                                    </div> </td>

                            </tr>
                           
                        </table>
                        <svg xmlns="http://www.w3.org/2000/svg" id="avatar" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                        <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" id="camera" width="16" height="16" fill="currentColor" class="bi bi-camera" viewBox="0 0 16 16">
                        <path d="M15 12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h1.172a3 3 0 0 0 2.12-.879l.83-.828A1 1 0 0 1 6.827 3h2.344a1 1 0 0 1 .707.293l.828.828A3 3 0 0 0 12.828 5H14a1 1 0 0 1 1 1v6zM2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2z"/>
                        <path d="M8 11a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5zm0 1a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM3 6.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z"/>
                        </svg>
                        <p id="avatartext">Ảnh đại diện</p>
                        <p id="kinhdoanhtext">Thông tin kinh doanh</p>
                        <table id="kinhdoanhform">
                            <!-- <td><p>Ngành hàng chính</p></td>
                            <td><div class="form-group required">  
                                    <select name="gender" id="gender">
                                        <option value="male">Thực phẩm tươi sống</option>
                                        <option value="female">Thực phẩm ...</option>
                                        <option value="other">Thực phẩm ...</option>
                                    </select>
                                </div> </td>
                            </tr>
                            <tr>
                                <td><p>Ngành hàng phụ<p></td>
                                <td><div class="form-group required">  
                                        <select name="gender" id="gender">
                                            <option value="male">Đã chọn 5 mục</option>
                                            <option value="female">Đã chọn...</option>
                                            <option value="other">Đã chọn...</option>
                                        </select>
                                    </div> </td>

                            </tr> --> 
                            <tr>
                                <td><p>Giấy phép kinh doanh<p></td>
                                <td><div class="form-group required">
                                        <p id="filetext" onclick="document.getElementById('getFile').click()"> + Thêm giấy phép </p>
                                        <input type='file' id="getFile" accept=".doc,.docx,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document">
                                    </div> </td>
                            </tr>
                            <tr>
                                <td><p>Tên cửa hàng</p></td>
                                <td><div class="form-group required">  
                                        <input type="text" class="form-control"  id="namestore" required="" name="namestore" value="" oninvalid="this.setCustomValidity('Vui lòng nhập thông tin này');" onchange="try{setCustomValidity('');}catch(e){};">  
                                    </div> </td>

                            </tr>
                            <tr>
                                <td><p>Địa chỉ cơ sở chính</p></td>
                                <td><div class="form-group required">  
                                        <input type="text" class="form-control" id="address" required="" name="address" value="" oninvalid="this.setCustomValidity('Vui lòng nhập thông tin này');" onchange="try{setCustomValidity('');}catch(e){};">  
                                    </div> </td>
                            </tr>
                        </table>

                        <div class="form-group pt-1">  
                            <button id="registerbtn" type="submit"> Đăng ký </button>  
                        </div>  
                    </form>  
                </div>  
            </div>  
        </div> 
    </body>
</html>
