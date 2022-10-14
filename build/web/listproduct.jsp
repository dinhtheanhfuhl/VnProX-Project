<%-- 
    Document   : listproduct
    Created on : Sep 30, 2022, 11:49:41 AM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết nông sản</title>
        <link href="css/listproduct.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="bg">
        <jsp:include page="common/header.jsp" />
        <div id="sidebarpos">
            <jsp:include page="common/sidebar.jsp" />
        </div>
        <div id="navbar">
            <a href="#">Trang chủ</a>
            <p id="arrow">></p>
            <a id="infornav" href="#">Trái cây</a>
        </div>
        <div id="left">
            <div id="cate">
                <table>
                    <tr>
                        <th><p>Theo Danh Mục</p></th>
                    </tr>
                    <tr>
                        <td><input type="checkbox">
                            <label>Trái cây nhiệt đới (90)</label><br></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox">
                            <label>Trái cây giàu Vitamin</label><br></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox">
                            <label>Trái cây HTX (4)</label><br></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox">
                            <label>Trái cây theo mùa</label><br></td>
                    </tr>
                </table>
                <div id="displaymore">
                    <span id="dots"></span>
                    <span id="more">
                        <input type="checkbox">
                        <label>Trái cây giàu Vitamin</label><br>
                        <input type="checkbox">
                        <label>Trái cây giàu Vitamin</label><br>
                        <input type="checkbox">
                        <label>Trái cây giàu Vitamin</label><br>
                        <input type="checkbox">
                        <label>Trái cây giàu Vitamin</label><br>
                    </span>
                    <button onclick="myFunction()" id="myBtn">Thêm</button>
                </div>
            </div>
            <div id="supplier">
                <table>
                    <tr>
                        <th><p>Nơi cung cấp</p></th>
                    </tr>
                    <tr>
                        <td><input type="checkbox">
                            <label>Trái cây nhiệt đới (90)</label><br></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox">
                            <label>Trái cây giàu Vitamin</label><br></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox">
                            <label>Trái cây HTX (4)</label><br></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox">
                            <label>Trái cây theo mùa</label><br></td>
                    </tr>
                </table>
                <div id="displaymore1">
                    <span id="dots1"></span>
                    <span id="more1">
                        <input type="checkbox">
                        <label>Trái cây giàu Vitamin</label><br>
                        <input type="checkbox">
                        <label>Trái cây giàu Vitamin</label><br>
                        <input type="checkbox">
                        <label>Trái cây giàu Vitamin</label><br>
                        <input type="checkbox">
                        <label>Trái cây giàu Vitamin</label><br>
                    </span>
                    <button onclick="myFunction1()" id="myBtn1">Thêm</button>
                </div>
            </div>
            <div id="status">
                <table>
                    <tr>
                        <th><p>Tình trạng</p></th>
                    </tr>
                    <tr>
                        <td><input type="checkbox">
                            <label>Trái cây nhiệt đới (90)</label><br></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox">
                            <label>Trái cây giàu Vitamin</label><br></td>
                    </tr>
                </table>
            </div>
            <div id="number">
                <table>
                    <tr>
                        <th><p>Số lượng</p></th>
                    </tr>
                    <tr>
                        <td><input id="numberfrom" placeholder="Từ" type="text"> - <input id="numberfrom" placeholder="Đến" type="text"><br>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="price">
                <table>
                    <tr>
                        <th><p>Đơn giá</p></th>
                    </tr>
                    <tr>
                        <td><input id="numberfrom" placeholder="đTừ" type="text"> - <input id="numberfrom" placeholder="đĐến" type="text"><br>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="btnfilter">
                <button id="new" type="button">Làm mới</button>
                <button id="filter" type="button">Lọc</button>
            </div>
        </div>
        <div id="right">
            <img src="image/pexels-jane-doan-1099680.jpg" height="60px;" width="100%;" alt=""/>
            <table id="tb2">
                <a id="btndsorttext">Sắp xếp theo</a>
                <a id="btndsort"><button type="button">Phổ Biến</button></a>
                <a id="btndsort"><button type="button">Mới Nhất</button></a>
                <a>
                    <select name="sortbyprice" id="sortbyprice">
                        <option>Giá: Từ thấp tới cao</option>
                        <option>Giá: Từ cao tới thấp</option>
                    </select>
                </a>
            </table>
            <div class="col-sm-3">
                <div class="col-item" >
                    <div class="photo">
                        <img src="https://i.etsystatic.com/26809228/r/il/a75759/2809916329/il_fullxfull.2809916329_9o1f.jpg" class="img-responsive" alt="a" />
                    </div>
                    <div class="info">
                        <div class="row">
                            <h5>
                                Rau toàn thuốc cỏ đông anh ngon vừa thế giới này</h5>
                            <h5 class="price-text-color">
                                đ99.000~đ120.000</h5>

                        </div>
                        <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                            </svg> Hà nội</p>
                        <div id="trongluong">
                            <p>Trọng lượng ước tính</p>
                            <p>3000kg</p>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="col-item" >
                    <div class="photo">
                        <img src="https://i.etsystatic.com/26809228/r/il/a75759/2809916329/il_fullxfull.2809916329_9o1f.jpg" class="img-responsive" alt="a" />
                    </div>
                    <div class="info">
                        <div class="row">
                            <h5>
                                Rau toàn thuốc cỏ đông anh ngon vừa thế giới này</h5>
                            <h5 class="price-text-color">
                                đ99.000~đ120.000</h5>

                        </div>
                        <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                            </svg> Hà nội</p>
                        <div id="trongluong">
                            <p>Trọng lượng ước tính</p>
                            <p>3000kg</p>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="col-item" >
                    <div class="photo">
                        <img src="https://i.etsystatic.com/26809228/r/il/a75759/2809916329/il_fullxfull.2809916329_9o1f.jpg" class="img-responsive" alt="a" />
                    </div>
                    <div class="info">
                        <div class="row">
                            <h5>
                                Rau toàn thuốc cỏ đông anh ngon vừa thế giới này</h5>
                            <h5 class="price-text-color">
                                đ99.000~đ120.000</h5>

                        </div>
                        <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                            </svg> Hà nội</p>
                        <div id="trongluong">
                            <p>Trọng lượng ước tính</p>
                            <p>3000kg</p>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="col-item" >
                    <div class="photo">
                        <img src="https://i.etsystatic.com/26809228/r/il/a75759/2809916329/il_fullxfull.2809916329_9o1f.jpg" class="img-responsive" alt="a" />
                    </div>
                    <div class="info">
                        <div class="row">
                            <h5>
                                Rau toàn thuốc cỏ đông anh ngon vừa thế giới này</h5>
                            <h5 class="price-text-color">
                                đ99.000~đ120.000</h5>

                        </div>
                        <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                            </svg> Hà nội</p>
                        <div id="trongluong">
                            <p>Trọng lượng ước tính</p>
                            <p>3000kg</p>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="col-item" >
                    <div class="photo">
                        <img src="https://i.etsystatic.com/26809228/r/il/a75759/2809916329/il_fullxfull.2809916329_9o1f.jpg" class="img-responsive" alt="a" />
                    </div>
                    <div class="info">
                        <div class="row">
                            <h5>
                                Rau toàn thuốc cỏ đông anh ngon vừa thế giới này</h5>
                            <h5 class="price-text-color">
                                đ99.000~đ120.000</h5>

                        </div>
                        <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                            </svg> Hà nội</p>
                        <div id="trongluong">
                            <p>Trọng lượng ước tính</p>
                            <p>3000kg</p>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="col-item" >
                    <div class="photo">
                        <img src="https://i.etsystatic.com/26809228/r/il/a75759/2809916329/il_fullxfull.2809916329_9o1f.jpg" class="img-responsive" alt="a" />
                    </div>
                    <div class="info">
                        <div class="row">
                            <h5>
                                Rau toàn thuốc cỏ đông anh ngon vừa thế giới này</h5>
                            <h5 class="price-text-color">
                                đ99.000~đ120.000</h5>

                        </div>
                        <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                            </svg> Hà nội</p>
                        <div id="trongluong">
                            <p>Trọng lượng ước tính</p>
                            <p>3000kg</p>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="col-item" >
                    <div class="photo">
                        <img src="https://i.etsystatic.com/26809228/r/il/a75759/2809916329/il_fullxfull.2809916329_9o1f.jpg" class="img-responsive" alt="a" />
                    </div>
                    <div class="info">
                        <div class="row">
                            <h5>
                                Rau toàn thuốc cỏ đông anh ngon vừa thế giới này</h5>
                            <h5 class="price-text-color">
                                đ99.000~đ120.000</h5>

                        </div>
                        <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                            </svg> Hà nội</p>
                        <div id="trongluong">
                            <p>Trọng lượng ước tính</p>
                            <p>3000kg</p>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="col-item" id="colitem" >
                    <div class="photo" id="pt">
                        <img src="https://i.etsystatic.com/26809228/r/il/a75759/2809916329/il_fullxfull.2809916329_9o1f.jpg" class="img-responsive" alt="a" />
                    </div>
                    <div class="info">
                        <div class="row">
                            <h5>
                                Rau toàn thuốc cỏ đông anh ngon vừa thế giới này</h5>
                            <h5 class="price-text-color">
                                đ99.000~đ120.000</h5>

                        </div>
                        <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                            </svg> Hà nội</p>
                        <div id="trongluong">
                            <p>Trọng lượng ước tính</p>
                            <p>3000kg</p>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="col-item" >
                    <div class="photo">
                        <img src="https://i.etsystatic.com/26809228/r/il/a75759/2809916329/il_fullxfull.2809916329_9o1f.jpg" class="img-responsive" alt="a" />
                    </div>
                    <div class="info">
                        <div class="row">
                            <h5>
                                Rau toàn thuốc cỏ đông anh ngon vừa thế giới này</h5>
                            <h5 class="price-text-color">
                                đ99.000~đ120.000</h5>

                        </div>
                        <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                            </svg> Hà nội</p>
                        <div id="trongluong">
                            <p>Trọng lượng ước tính</p>
                            <p>3000kg</p>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function myFunction() {
                var dots = document.getElementById("dots");
                var moreText = document.getElementById("more");
                var btnText = document.getElementById("myBtn");

                if (dots.style.display === "none") {
                    dots.style.display = "inline";
                    btnText.innerHTML = "Thêm";
                    moreText.style.display = "none";
                } else {
                    dots.style.display = "none";
                    btnText.innerHTML = "Ẩn";
                    moreText.style.display = "inline";
                }
            }
            function myFunction1() {
                var dots = document.getElementById("dots1");
                var moreText = document.getElementById("more1");
                var btnText = document.getElementById("myBtn1");

                if (dots.style.display === "none") {
                    dots.style.display = "inline";
                    btnText.innerHTML = "Thêm";
                    moreText.style.display = "none";
                } else {
                    dots.style.display = "none";
                    btnText.innerHTML = "Ẩn";
                    moreText.style.display = "inline";
                }
            }

        </script>
    </body>
</html>
