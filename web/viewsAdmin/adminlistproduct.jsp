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
        <title>Danh sách sp cần duyệt</title>
        <link href="../css/listproductstatus.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="bg">
        <jsp:include page="../common/header2.jsp" />
        <div id="sidebarpos">
            <jsp:include page="../common/sidebar.jsp" />
        </div>
        <div id="navbar">
            <a id="qltext" href="#">Quản lý</a>
            <p id="arrow">></p>
            <a id="producttext" href="#">Sản phẩm</a>
        </div>

        <div id="navbar2">
            <form id="form" method="post">
                <table>
                    <tr>
                        <td>Mã yêu cầu phê duyệt</td>
                        <td>Tên sản phẩm</td>
                        <td>Mã Barcode/SKU</td>
                        <td>Nhà cung cấp</td>
                        
                    </tr>
                    <tr>
                        <td><input id="inputfield" placeholder="01234546554" class="form-control"></td>
                        <td><input id="inputfield" placeholder="Vải thiều, cam, ...." class="form-control"></td>
                        <td><input id="inputfield" placeholder="Nhập mã SKU" class="form-control"></td>
                        <td><input id="inputfield" placeholder="Clever fruit" class="form-control"></td>
                        <td><button id="btnsearch" id="inputfield" type="submit"><i class="fa fa-search"></i></button></td>
                    </tr>
                </table>
            </form>
        </div>

        <div id="tb2" class="container">
            <table id="tb4">
                <tr>
                    <td id="s"><button id="btntb4" type="button">Tất cả</button></td>
                    <td id="s"><button id="btntb4" type="button">Chờ phê duyệt</button></td>
                    <td id="s"><button id="btntb4" type="button">Đã phê duyệt</button></td>
                    <td id="s"><button id="btntb4" type="button">Không được phê duyệt</button></td>
                    <td id="s"><button id="btntb4" type="button">Đã ẩn</button></td>
                </tr>
            </table>
            </table>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">&nbsp;</th>
                        <th scope="col">STT</th>
                        <th scope="col">Mã yêu cầu duyệt</th>
                        <th scope="col">Thời gian gửi yêu cầu</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Mã Barcode/SKU</th>
                        <th scope="col">Nhà cung cấp</th>
                        <th scope="col">Khu vực giao hàng</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Chi tiết</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row"><input type = "checkbox"></th>
                        <td>1</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>ads</td>
                    </tr>
                    <tr>
                        <th scope="row"><input type = "checkbox"></th>
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
                        <th scope="row"><input type = "checkbox"></th>
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
                        <th scope="row"><input type = "checkbox"></th>
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
                        <th scope="row"><input type = "checkbox"></th>
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
                        <th scope="row"><input type = "checkbox"></th>
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
                        <th scope="row"><input type = "checkbox"></th>
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
            <div id="action" class="dropdown">
                <button id="dropbtn" >
                    Hành động
                </button>
                <div id="dropdowncont" class="dropdown-content">
                    <a href="#">Đồng ý duyệt sản phẩm</a>
                    <a href="">Từ chối duyệt sản phẩm</a>
                </div>
            </div>
            <div id="action" class="dropdown">
                <button id="dropbtn" >
                    Hành động <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
                    <path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"/>
                    </svg>
                </button>
                <div style="margin-left: 120px;margin-top: -45px;;width: 190px;" class="dropdown-content">
                    <a href="#">Đồng ý duyệt sản phẩm</a>
                    <a href="#">Từ chối duyệt sản phẩm</a>
                </div>
            </div>
            <div id="pagination">
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
            </div>
            <p id="msgtext">Hiển thị 10 trong 23 bản ghi</p>
        </div>
    </body>
</html>
