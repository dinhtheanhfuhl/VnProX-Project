<%-- 
    Document   : createproduct
    Created on : Sep 29, 2022, 7:11:21 AM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tạo sản phẩm mới</title>
        <link href="../css/createproduct.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">  
    </head>
    <body id="bgpage">
        <jsp:include page="../common/header.jsp" />
        <div id="sidebarpos">
            <jsp:include page="../common/sidebar.jsp" />
        </div>
        <div id="navbar">
            <a href="#">Quản lý</a>
            <p id="arrow">></p>
            <a href="#">Sản phẩm</a>
            <p id="arrow">></p>
            <a id="newproducttext" href="#">Thêm sản phẩm mới</a>
        </div>
        <p id="basicinfor">Thông tin sản phẩm</p>
        <div id="contentpos">
            <div id="note">
                <p id="licennote" >
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                    </svg>
                    <a>Các giấy tờ về chứng nhận xuất xứ, chất lượng sản phẩm, thành phần sản phẩm, kiểm duyệt sản phẩm,...</a>
                </p></div>
            <form id="form" method="post">
                <table>
                    <tbody>
                        <tr>
                            <td><p id="basicinfotext">Hình ảnh sản phẩm</p></td>
                            <td>
                                <p id="filetext2" onclick="document.getElementById('getFile').click()"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                    </svg>
                                </p>
                                <input type="file" id="getFile" />
                                <img width="80px" height="80px" id="preview" />
                            </td>
                        </tr>
                        
                        <tr>
                            <td><p id="basicinfotext">Video sản phẩm</p></td>
                            <!-- <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/ufMaRmJyyPM" allowfullscreen="true"></iframe> --> 
                            <td><input type="text" class="form-control" placeholder="https://www.youtube.com/watch?v=c_iRx2Un07k" id="videolink"  name="videolink" value="">  
                        </tr>
                        <tr>
                            <td><p id="namedis">Tên hiển thị</p></td>
                            <td><input type="text" readonly="" class="form-control" placeholder="Ví dụ: Vải thiều Ngọt Bắc Giang Đóng hộp 5kg " id="namedisplay"  name="namedisplay" value="">  
                            </td>
                        </tr>
                        <tr>
                            <td><p id="des">Mô tả sản phẩm</p></td>
                            <td><textarea id="description" placeholder="Nhập mô tả sản phẩm. Có thể nhập các thông tin về tính năng, đặc điểm sản phẩm, công dụng, cách dùng, các giấy tờ chứng nhận, Thương hiệu, Kích thước (dài x rộng x cao), Hạn bảo hành, Loại bảo hành, Ngày sản xuất,  Tình trạng hàng,..Lưu ý: Không để thông tin liên hệ của doanh nghiệp bán tại đây" rows="4" cols="50"></textarea> 
                            </td>
                        </tr>
                        <tr>
                            <td><p id="barcod">Mã Barcode/SKU</p></td>
                            <td><input type="text" class="form-control" placeholder="1234567890123" id="barcode"  name="barcode" value=""> 
                        </tr>
                        <tr>
                            <td><p id="licen">Giấy tờ chứng nhận</p></td>
                            <td><div id="licence" class="form-group required">
                                    <p id="filetext" onclick="document.getElementById('getFile').click()"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
                                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                        <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                        </svg> Giấy tờ chứng nhận 
                                    </p>
                                    <input type='file' id="getFile" accept=".doc,.docx,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document">
                                </div> </td>
                        </tr>
                        <tr>
                            <td><p id="danhm">Danh mục</p></td>
                            <td><div id="list" class="form-group required">  
                                    <select name="danhmuc" id="danhmuc">
                                        <option value="hoaqua">Hoa quả</option>
                                        <option value="rau">Rau</option>
                                        <option value="other">Đã chọn...</option>
                                    </select>
                                </div> </td>
                        </tr>
                    </tbody>
                </table>
                <p id="detailinfor">Thông tin chi tiết</p>
                <table id="tb2">
                    <tr>
                        <td><p id="texttpro">*Tên loại sản phẩm</p></td>
                        <td><div id="inputform" class="form-group required">  
                                <input type="text" class="form-control" placeholder="Nhập tên loại sản phẩm: vải, nước ngọt,..." id="typepro" required="" name="typepro" value="">
                            </div></td>
                        <td><p id="texttpro">Kiểu đóng gói</p></td>
                        <td><div class="form-group required">  
                                <input type="text" class="form-control" placeholder="Nhập kiểu đóng gói:đóng hộp, đóng bao,..." id="typepack" required="" name="typepack" value="">
                            </div></td>
                    </tr>
                    <tr>
                        <td><p id="texttpro">Thương hiệu</p></td>
                        <td><div id="inputform" class="form-group required">  
                                <input type="text" class="form-control" placeholder="Nhập tên Thương Hiệu: Kinh Đô,..." id="brand" required="" name="brand" value="">
                            </div></td>
                        <td><p id="texttpro">Thành phần</p></td>
                        <td><div id="inputform2" class="form-group required">  
                                <input type="text" class="form-control" placeholder="Nhập tỷ lệ và thành phần: 80% Ca cao,..." id="element" required="" name="element" value="">
                            </div></td>
                    </tr>
                    <tr>
                        <td><p id="texttpro">Hương vị</p></td>
                        <td><div id="inputform" class="form-group required">  
                                <input type="text" class="form-control" placeholder="Nhập loại Hương vị: Chocolate, Đào,..." id="smell" required="" name="smell" value="">
                            </div></td>
                        <td><p id="texttpro">Xuất xứ</p></td>
                        <td><div id="inputform2" class="form-group required">  
                                <input type="text" class="form-control" placeholder="Chọn xuất xứ" id="origin" required="" name="origin" value="">
                            </div></td>
                    </tr>
                    <tr>
                        <td><p id="texttpro">Màu sắc</p></td>
                        <td><div id="inputform" class="form-group required">  
                                <input type="text" class="form-control" placeholder="Nhập màu sắc sản phẩm: Đỏ, Xanh " id="color" required="" name="color" value="">
                            </div></td>
                        
                    </tr>
                    <tr>
                        <td><p id="texttpro">*Trọng lượng</p></td>
                        <td><div id="inputform" class="form-group required">  
                                <input type="text" class="form-control" placeholder="Ví dụ: 400g, 20kg/ 500ml, 2l,..." id="weight" required="" name="weight" value="">
                            </div></td>
                        
                    </tr>
                </table>
                <p id="saleinfor">Thông tin bán hàng</p>
                <table id="tb3">
                    <thead>
                        <tr>
                            <th scope="col">&nbsp</th>
                            <th scope="col"><p>*Đơn vị</p></th>
                            <th scope="col"><p id="numberfromtext">*Số lượng từ</p></th>
                            <th scope="col"><p id="pricetext">*Giá</p></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr >
                            <td><p id="numberandprice">*Số lượng & Đơn giá</p></td>
                            <td><div class="form-group required">  
                                    <p name="unit" id="unit">
                                        Kg
                                    </p>
                                </div> </td>
                            <td><input id="numberfrom" type="text" class="form-control" placeholder="1" required="" value=""> </td>
                            <td id="price" ><input type="text" id="p" class="form-control" placeholder="2" required="" value=""> </td>
                        </tr>
                        <tr id="as">
                            <td></td>
                            <td></td>
                            <td><p id="numberfromtext">*Số lượng từ</p></td>
                            <td><p id="pricetext">*Giá</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td><input type="text" class="form-control" placeholder="3" required="" value=""> </td>
                            <td id="price" ><input id="p" type="text" class="form-control" placeholder="4" required="" value=""> </td>
                        </tr>
                        <tr id="as">
                            <td></td>
                            <td></td>
                            <td><p id="numberfromtext">*Số lượng từ</p></td>
                            <td><p id="pricetext">*Giá</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td><input type="text" class="form-control" placeholder="3" required="" value=""> </td>
                            <td id="price"><input id="p" type="text" class="form-control" placeholder="4" required="" value=""> </td>
                            <td id="garbage"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                </svg></td>
                        </tr>
                        <tr id="as">
                            <td></td>
                            <td></td>
                            <td><p id="numberfromtext"></p></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td id="addnew"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                </svg> <a href="#">Thêm khoảng giá mới</a></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <div id="areamove"><p>*Khu vực giao hàng</p> </div>
                <div class="dropdown">
                    <button class="dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Chọn khu vực 
                    </button>
                    <div id="areadrop" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Thành phố Hồ Chí Minh</a>
                        <a class="dropdown-item" href="#">Bà Rịa Vũng Tàu</a>
                    </div>
                </div>
                <div class="form-group pt-1">  
                    <button id="cancel" type="submit"> Huỷ </button>
                </div> 
                <div class="form-group pt-1">  
                    <button id="save" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" type="submit">Yêu cầu phê duyệt</button> </div>
            </form>
        </div>
        <script>
            const fileEle = document.getElementById('getFile');
            const previewEle = document.getElementById('preview');
            fileEle.addEventListener('change', function (e) {
                // Get the selected file
                const file = e.target.files[0];

                const reader = new FileReader();
                reader.addEventListener('load', function () {
                    // Set the source for preview element
                    previewEle.src = reader.result;
                    //document.getElementById("filetext2").style.display = "none";
                });

                reader.readAsDataURL(file);
            });
        </script>
    </body>
</html>
