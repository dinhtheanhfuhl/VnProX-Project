<%-- 
    Document   : content
    Created on : Sep 24, 2022, 10:10:57 PM
    Author     : ductd
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    </head>
    <body>
        <div id="bgfruit" class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <div class="carousel-inner">
                    <div class="item active">
                        <img id="sizesliderheader" src="https://farm24h.vn/wp-content/uploads/2020/04/BANNER-FANPAGE-1-01.jpg" alt="Los Angeles">
                    </div>
                    <div class="item">
                        <img id="sizesliderheader" src="https://footballwhispers.com/wp-content/uploads/2018/01/Slide-13-1200x781.jpg" alt="Chicago">
                    </div>
                    <div class="item">
                        <img id="sizesliderheader" src="https://thuonglai.vn/image/cache/catalog/Slide/banner%202-1360x577.png" alt="New york">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <div id="gioithieu">
                <h2 id="introheader" >NÔNG SẢN </h2>
                <h2 id="introheader" >CỦA NGƯỜI VIỆT</h2>
                <hr id="line">
                <div id="introcontent">
                    <p>Vietnam Products Exchange (VnProX) là một nền</p>
                    <p>tảng kết nối các nhà cung cấp nông sản Việt với</p>
                    <p>các thương lái, siêu thị mini nhằm  kích cầu tiêu</p>
                    <p>dùng hàng Việt đến tất cả người dân.</p>
                    </br>
                    <p>Chúng tôi luôn đảm bảo mọi thông tin của tất cả</p>
                    <p>mặt hàng nông sản xuất hiện trên sàn là chính</p>
                    <p>xác nhất.</p>
                </div>
            </div>
            <div id="more">
                <a href="#">Tìm hiểu thêm &nbsp<i class='fas fa-arrow-alt-circle-right'></i></a>
            </div>
            <div class="row">
                <div class="row">
                    <div class="col-md-9">
                        <h3 id="titlesilider2">
                            Nông sản phổ biến</h3>
                    </div>
                    <div class="col-md-3">
                        <div class="controls pull-right hidden-xs">
                            <a class="left fa fa-chevron-left btn btn-success" href="#carousel-example-generic"
                               data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-success" href="#carousel-example-generic"
                               data-slide="next"></a>
                        </div>
                    </div>
                </div>
                <div id="carousel-example-generic" class="carousel slide hidden-xs" data-ride="carousel">
                    <div class="carousel-inner" id="bgslider" >
                        <div class="item active" >
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="col-item" >
                                        <div class="photo">
                                            <img src="https://th.bing.com/th/id/R.b9d66e06bd1fc994bf3dd2e363c106b8?rik=6a6qAeFjvvI8ug&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0011%2f2341%2f8172%2fproducts%2fTM791-11_1024x1024.jpg%3fv%3d1523403746&ehk=MPX8ljFlHLdh7R1d7OAf1zQCeuSgicn1ckZDM5HBzrI%3d&risl=&pid=ImgRaw&r=0" class="img-responsive" alt="a" />
                                        </div>
                                        <div class="info">
                                            <div class="row">
                                                <h5>
                                                    Cà chua phun chất phóng xạ thanh hóa ngon nhì thế giới này</h5>
                                                <h5 class="price-text-color">
                                                    đ99.000~đ120.000</h5>

                                            </div>
                                            <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                                                </svg> Hà nội</p>
                                            <div class="clearfix">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="col-item">
                                        <div class="photo">
                                            <img src="https://th.bing.com/th/id/R.b9d66e06bd1fc994bf3dd2e363c106b8?rik=6a6qAeFjvvI8ug&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0011%2f2341%2f8172%2fproducts%2fTM791-11_1024x1024.jpg%3fv%3d1523403746&ehk=MPX8ljFlHLdh7R1d7OAf1zQCeuSgicn1ckZDM5HBzrI%3d&risl=&pid=ImgRaw&r=0" class="img-responsive" alt="a" />
                                        </div>
                                        <div class="info">
                                            <div class="row">
                                                <h5>
                                                    Cà chua phun chất phóng xạ thanh hóa ngon nhì thế giới này</h5>
                                                <h5 class="price-text-color">
                                                    đ99.000~đ120.000</h5>

                                            </div>

                                            <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                                                </svg> Hà nội</p>
                                            <div class="clearfix">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="col-item">
                                        <div class="photo">
                                            <img src="https://th.bing.com/th/id/R.b9d66e06bd1fc994bf3dd2e363c106b8?rik=6a6qAeFjvvI8ug&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0011%2f2341%2f8172%2fproducts%2fTM791-11_1024x1024.jpg%3fv%3d1523403746&ehk=MPX8ljFlHLdh7R1d7OAf1zQCeuSgicn1ckZDM5HBzrI%3d&risl=&pid=ImgRaw&r=0" class="img-responsive" alt="a" />
                                        </div>
                                        <div class="info">
                                            <div class="row">
                                                <h5>
                                                    Cà chua phun chất phóng xạ thanh hóa ngon nhì thế giới này</h5>
                                                <h5 class="price-text-color">
                                                    đ99.000~đ120.000</h5>

                                            </div>


                                            <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                                                </svg> Hà nội</p>
                                            <div class="clearfix">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="col-item">
                                        <div class="photo">
                                            <img src="https://th.bing.com/th/id/R.b9d66e06bd1fc994bf3dd2e363c106b8?rik=6a6qAeFjvvI8ug&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0011%2f2341%2f8172%2fproducts%2fTM791-11_1024x1024.jpg%3fv%3d1523403746&ehk=MPX8ljFlHLdh7R1d7OAf1zQCeuSgicn1ckZDM5HBzrI%3d&risl=&pid=ImgRaw&r=0" class="img-responsive" alt="a" />
                                        </div>
                                        <div class="info">
                                            <div class="row">
                                                <h5>
                                                    Cà chua phun chất phóng xạ thanh hóa ngon nhì thế giới này</h5>
                                                <h5 class="price-text-color">
                                                    đ99.000~đ120.000</h5>

                                            </div>
                                            <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                                                </svg> Hà nội</p>

                                            <div class="clearfix">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="col-item">
                                        <div class="photo">
                                            <img src="https://th.bing.com/th/id/R.b9d66e06bd1fc994bf3dd2e363c106b8?rik=6a6qAeFjvvI8ug&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0011%2f2341%2f8172%2fproducts%2fTM791-11_1024x1024.jpg%3fv%3d1523403746&ehk=MPX8ljFlHLdh7R1d7OAf1zQCeuSgicn1ckZDM5HBzrI%3d&risl=&pid=ImgRaw&r=0" class="img-responsive" alt="a" />
                                        </div>
                                        <div class="info">
                                            <div class="row">
                                                <h5>
                                                    Cà chua phun chất phóng xạ thanh hóa ngon nhì thế giới này</h5>
                                                <h5 class="price-text-color">
                                                    đ99.000~đ120.000</h5>
                                            </div>
                                            <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                                                </svg> Hà nội</p>
                                            <div class="clearfix">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="col-item">
                                        <div class="photo">
                                            <img src="https://th.bing.com/th/id/R.b9d66e06bd1fc994bf3dd2e363c106b8?rik=6a6qAeFjvvI8ug&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0011%2f2341%2f8172%2fproducts%2fTM791-11_1024x1024.jpg%3fv%3d1523403746&ehk=MPX8ljFlHLdh7R1d7OAf1zQCeuSgicn1ckZDM5HBzrI%3d&risl=&pid=ImgRaw&r=0" class="img-responsive" alt="a" />
                                        </div>
                                        <div class="info">
                                            <div class="row">
                                                <h5>
                                                    Cà chua phun chất phóng xạ thanh hóa ngon nhì thế giới này</h5>
                                                <h5 class="price-text-color">
                                                    $249.99</h5>

                                            </div>
                                            <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                                                </svg> Hà nội</p>
                                            <div class="clearfix">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="col-item">
                                        <div class="photo">
                                            <img src="https://th.bing.com/th/id/R.b9d66e06bd1fc994bf3dd2e363c106b8?rik=6a6qAeFjvvI8ug&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0011%2f2341%2f8172%2fproducts%2fTM791-11_1024x1024.jpg%3fv%3d1523403746&ehk=MPX8ljFlHLdh7R1d7OAf1zQCeuSgicn1ckZDM5HBzrI%3d&risl=&pid=ImgRaw&r=0" class="img-responsive" alt="a" />
                                        </div>
                                        <div class="info">
                                            <div class="row">
                                                <h5>
                                                    Cà chua phun chất phóng xạ thanh hóa ngon nhì thế giới này</h5>
                                                <h5 class="price-text-color">
                                                    đ99.000~đ120.000</h5>
                                            </div>
                                            <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                                                </svg> Hà nội</p>
                                            <div class="clearfix">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="col-item">
                                        <div class="photo">
                                            <img src="https://th.bing.com/th/id/R.b9d66e06bd1fc994bf3dd2e363c106b8?rik=6a6qAeFjvvI8ug&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0011%2f2341%2f8172%2fproducts%2fTM791-11_1024x1024.jpg%3fv%3d1523403746&ehk=MPX8ljFlHLdh7R1d7OAf1zQCeuSgicn1ckZDM5HBzrI%3d&risl=&pid=ImgRaw&r=0" class="img-responsive" alt="a" />
                                        </div>
                                        <div class="info">
                                            <div class="row">
                                                <h5>
                                                    Cà chua phun chất phóng xạ thanh hóa ngon nhì thế giới này</h5>
                                                <h5 class="price-text-color">
                                                    đ99.000~đ120.000</h5>

                                            </div>
                                            <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                                                </svg> Hà nội</p>
                                            <div class="clearfix">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row"">
                <div class="row">
                    <div class="col-md-9">
                        <h3 id="titlesilider1">
                            Nông sản mới lên sàn</h3>
                    </div>
                    <div class="col-md-3">
                        <div class="controls pull-right hidden-xs">
                            <a class="left fa fa-chevron-left btn btn-success" href="#carousel-example"
                               data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-success" href="#carousel-example"
                               data-slide="next"></a>
                        </div>
                    </div>
                </div>
                <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" id="bgslider">
                        <div class="item active">
                            <div class="row">
                                <c:forEach var="product" items="${requestScope.productsByDateDesc}">
                                    <div class="col-sm-3">
                                        <div class="col-item" >
                                            <div class="photo">
                                                <img src="${product.mainImgPath}" class="img-responsive" alt="a" />
                                            </div>
                                            <div class="info">
                                                <div class="row">
                                                    <h5>${product.productName}</h5>
                                                    <h5 class="price-text-color">${product.minPrice}~${product.minPrice}</h5>
                                                </div>
                                                <p class="btn-details"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                                    <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                                                    </svg>${product.cityName}</p>
                                                <div class="clearfix">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <c:forEach begin="1" end="4">
                                    <div class="col-sm-3">
                                        <div class="col-item">
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
                                                <div class="clearfix">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h3 id="danhmuc">DANH MỤC NÔNG SẢN</h3>
            <c:forEach var="key" items="${requestScope.setCategory}">
                <div class="container" id="fruit1">
                    <div id="viewall" style="float: right;">
                        <a href="listproduct.jsp" >Xem tất cả</a></div>
                    <h3 id="fruitcate">${key.cateName}</h3>
                    <div class="features_items">
                        <c:forEach var="product" items="${mapProduct.get(key)}" >
                            <div id="alltag">
                                <img id="imgall" src="${product.mainImgPath}" class="img-responsive" alt="a" />
                                <h4 id="titleall">${product.productName}</h4>
                                <p id="priceall" >${product.minPrice} ~ ${product.maxPrice}</p>
                                <p id="weightall">Trọng lượng ước tính <br>${product.weight}</p>
                                <p id="locationall"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                    <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                                    </svg>${product.cityName}</p>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </c:forEach>
            <div class="container" id="fruit3">
                <div id="viewall" style="float: right;">
                    <a href="listproduct.jsp" >Xem tất cả</a></div>
                <h3 id="fruitcate1">TẤT CẢ NÔNG SẢN</h3>
                <div class="features_items">
                    <c:forEach var="product" items="${requestScope.allProducts}" >
                        <a href="${pageContext.request.contextPath}/DetailProductController?producId=${product.productId}">
                            <div id="alltag">
                                <img src="${product.mainImgPath}" class="img-responsive" alt="a" />
                                <h4 id="titleall">${product.productName}</h4>
                                <p id="priceall" >${product.minPrice} ~ ${product.maxPrice}</p>
                                <p id="weightall">Trọng lượng ước tính <br>${product.weight}</p>
                                <p id="locationall"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                    <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                                    </svg>${product.cityName}</p>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
