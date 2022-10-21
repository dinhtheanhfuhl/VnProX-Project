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
        <title>Danh mục sản phẩm</title>
        <link href="${pageContext.request.contextPath}/css/listproductstatus.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/managecate.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="bg">
        <jsp:include page="../common/header2.jsp" />
        <div id="sidebarpos">
            <jsp:include page="../common/sidebar.jsp" />
        </div>
        <div id="navbar">
            <a id="qltext" href="#">Quản lý</a>
            <p id="arrow">></p>
            <a id="producttext" href="#">Danh mục</a>
        </div>
        <div id="tablecate" class="container">
            <h4 id="allcate">Tất cả danh mục</h4>
            <a id="addcatetext" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
                <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                </svg> Thêm danh mục mới</a>
            <div id="form" >
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Nhập nội dung tìm kiếm" aria-label="Search">
                    <button id="search" class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
                </form>
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">&nbsp;</th>
                        <th scope="col">STT</th>
                        <th scope="col">Danh mục cấp 1</th>
                        <th scope="col">Danh mục cấp 2</th>
                        <th scope="col">Chỉnh sửa</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row"><input type = "checkbox"></th>
                        <td>1</td>
                        <td>Trái cây</td>
                        <td>[0101] Trái cây nhiệt đới</td>
                        <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                            <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                            </svg></td>

                    </tr>
                    <tr>
                        <th scope="row"></th>
                        <td></td>
                        <td></td>
                        <td>[0102] Trái cây tươi</td>
                        <td></td>

                    </tr>
                    <tr>
                        <th scope="row"></th>
                        <td></td>
                        <td></td>
                        <td>[0103] Trái cây HTX</td>
                        <td></td>

                    </tr>
                    <tr>
                        <th scope="row"></th>
                        <td></td>
                        <td></td>
                        <td>[0104]</td>
                        <td></td>

                    </tr>
                    <tr>
                        <th scope="row"><input type = "checkbox"></th>
                        <td>2</td>
                        <td>Rau, củ</td>
                        <td>[0201]  Rau, củ nhiệt đới</td>
                        <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                            <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                            </svg></td>

                    </tr>
                    <tr>
                        <th scope="row"></th>
                        <td></td>
                        <td></td>
                        <td>[0202] Rau theo mùa</td>
                        <td></td>

                    </tr>
                    <tr>
                        <th scope="row"></th>
                        <td></td>
                        <td></td>
                        <td>[0203]</td>
                        <td></td>

                    </tr>
                    <tr>
                        <th scope="row"><input type = "checkbox"></th>
                        <td>3</td>
                        <td>Các loại hạt</td>
                        <td>[0301]  Các loại hạt khô</td>
                        <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                            <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                            </svg></td>
                    </tr>
                    <tr>
                        <th scope="row"></th>
                        <td></td>
                        <td></td>
                        <td>[0302]  Các loại hạt tươi</td>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row"></th>
                        <td></td>
                        <td></td>
                        <td>[0303]</td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="navbar3">
            <div id="action" class="dropdown">
                <button id="dropbtn" >
                    Xóa danh mục
                </button>
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
