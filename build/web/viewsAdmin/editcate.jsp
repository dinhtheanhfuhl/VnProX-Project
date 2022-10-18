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
        <title>Chỉnh sửa danh mục sản phẩm</title>
        <link href="../css/listproductstatus.css" rel="stylesheet" type="text/css"/>
        <link href="../css/managecate.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="bg">
        <jsp:include page="../common/header2.jsp" />
        <div id="sidebarpos">
            <jsp:include page="../common/sidebar.jsp" />
        </div>
        <div id="navbar">
            <a id="qltext" href="#">Quản lý</a>
            <p id="arrow">></p>
            <a id="qltext" href="#">Danh mục</a>
            <p id="arrow">></p>
            <a id="producttext" href="#">Chỉnh sửa danh mục sản phẩm</a>
        </div>
        <div id="tablecate" class="container">
            <h4 id="allcate">Chỉnh sửa danh mục sản phẩm</h4>
            <table class="table">
                <tbody>
                    <tr>
                        <td>Danh mục sản phẩm cấp 1</td>
                        <td><input id="level" placeholder="Nhập danh mục sản phẩm, ví dụ: Thực phẩm" type="text"></td>
                        <td><button id="btnadd">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                </svg> Thêm danh mục con
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>&emsp; Danh mục sản phẩm cấp 2</td>
                        <td><input id="level" placeholder="Nhập danh mục sản phẩm, ví dụ: Thực phẩm" type="text"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>&emsp; Danh mục sản phẩm cấp 2</td>
                        <td><input id="level" placeholder="Nhập danh mục sản phẩm, ví dụ: Thực phẩm" type="text"></td>
                        <td>
                            <button id="btnadd">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                </svg>
                            </button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="navbar3">
            <div id="btnpos">
                <div class="form-group pt-1">  
                    <button id="cancel" type="submit"> Huỷ </button>
                </div>  
                <div class="form-group pt-1">  
                    <button id="save" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" type="submit"> Lưu </button>  
                </div>  
            </div>
        </div>
        <script>
        </script>
    </body>
</html>
