<%-- 
    Document   : productdetail
    Created on : Sep 30, 2022, 7:49:41 AM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/productdetail.css" rel="stylesheet" type="text/css"/>
        <title>Chi tiết yêu cầu duyệt sản phẩm</title>
    </head>
    <body id="bgpage">
        <jsp:include page="../common/header.jsp" />
        <div id="sidebarpos">
            <jsp:include page="../common/sidebar.jsp" />
        </div>
        <div id="navbar">
            <a id="qltext" href="#">Quản lý</a>
            <p id="arrow">></p>
            <a id="producttext" href="#">Sản phẩm</a>
        </div>
        <div class="container" id="container">
            <div class="main_view" >
                <img src="https://th.bing.com/th/id/OIP.VRJaS0jcTwLsw7NN8LL2SgHaFj?pid=ImgDet&rs=1" id="main1" alt="IMAGE">
            </div>
            <div class="side_view">
                <img src="https://th.bing.com/th/id/OIP.VRJaS0jcTwLsw7NN8LL2SgHaFj?pid=ImgDet&rs=1" onclick="change(this.src)">
                <img src="https://th.bing.com/th/id/OIP.kwXvW3i95eQk0KCLUwiHuQHaEo?pid=ImgDet&w=800&h=500&rs=1" onclick="change(this.src)">
                <img src="https://th.bing.com/th/id/R.9198fcbbb8dc8f24fa862d40112e6050?rik=yMu8Aiwdy9mRRg&riu=http%3a%2f%2fsongkhoe24.weebly.com%2fuploads%2f9%2f7%2f2%2f8%2f97284964%2fca-tim-1_orig.jpg&ehk=cESiQSHSIJNmcC0kVV%2bFAXY7s0wvVQRVNDoDBRS%2bkQg%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1" onclick="change(this.src)">
                <img src="https://th.bing.com/th/id/R.7072c3cfe15319d869b6b0b3381cb237?rik=kNpCkbJ84jqAOQ&riu=http%3a%2f%2fsieuthiandam.com%2fwp-content%2fuploads%2f2018%2f03%2f0001895-khoai-lang-600x600.jpg&ehk=DyqYggP0VmiOr9KNbYr2RsENQRs%2fySqP1AbLU1NSJNY%3d&risl=&pid=ImgRaw&r=0" onclick="change(this.src)">
            </div>
            <div id="videopro">  
                <iframe width="320" height="240" src="https://www.youtube.com/embed/1GRXx_n4nok" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div id="videopro1">  
                <iframe width="312" height="190" src="https://www.youtube.com/embed/1GRXx_n4nok" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
        </div>
        <div id="info">
            <p id="title">
                Vải  thiều siêu ngọt Bắc Giang  - Giống vải không hạt, mọng nước
            </p>
            <hr>
            <div id="price">
                <p> 69Kg - 100Kg<br>đ190.000</p>
                <p> 69Kg - 100Kg<br>đ190.000</p>
                <p> 69Kg - 100Kg<br>đ190.000</p>
            </div>
            <p id="weight">999 sản phẩm có sẵn</p>
            <hr>
            <div id="bottom">
                <p>Danh mục hàng: <span id="btmdetail">Trái cây  > Trái cây nhiệt đới</span></p>
                <p>SKU sản phẩm: <span id="btmdetail">0123456789012</span></p>
                <p>Khu vực giao hàng:  <span id="btmdetail">Hà Nội; Bắc Ninh; Hải Phòng; Hồ Chí Minh</span></p>
                <p>Giấy tờ chứng nhận:  <span id="btmdetail">sddf</span></p>
            </div>
        </div>
        <div id="tabtag">
            <div class="tab" id="tag">
                <button class="tablinks" id="defaultOpen" onclick="openCity(event, 'des')"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
                    <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                    </svg> Mô tả sản phẩm</button>
                <button class="tablinks" onclick="openCity(event, 'overview')"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop" viewBox="0 0 16 16">
                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zM4 15h3v-5H4v5zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-3zm3 0h-2v3h2v-3z"/>
                    </svg> Tổng quan cửa hàng</button>
                <button class="tablinks" onclick="openCity(event, 'licen')"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark" viewBox="0 0 16 16">
                    <path d="M14 4.5V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5L14 4.5zm-3 0A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5h-2z"/>
                    </svg> Phê duyệt</button>
            </div>
            <hr id="line">
            <div id="des" class="tabcontent">
                <div id="prodetailtext">
                    <p>CHI TIẾT SẢN PHẨM</p>
                </div>
                <div id="cate">
                    <p>Tokyo is the capital of Japan.</p> 
                    <p>Tokyo is the capital of Japan.</p> 
                    <p>Tokyo is the capital of Japan.</p> 
                    <p>Tokyo is the capital of Japan.</p> 
                    <p>Tokyo is the capital of Japan.</p> 
                    <p>Tokyo is the capital of Japan.</p> 
                    <p>Tokyo is the capital of Japan.</p> 
                    <div id="prodetailtext1">
                        <p>CHI TIẾT SẢN PHẨM</p>
                    </div>

                    <div id="displaymore">
                        <span id="dots1"></span>
                        <span id="more1">
                            <p>Paris is the capital of France.</p> 
                            <p>Paris is the capital of France.</p> 
                            <p>Paris is the capital of France.</p> 
                            <p>Paris is the capital of France.</p> 
                            <p>Paris is the capital of France.</p> 
                            <p>Paris is the capital of France.</p> 
                            <p>Paris is the capital of France.</p> 
                        </span>
                        <button onclick="myFunction1()" id="myBtn1">Thêm</button>
                    </div>
                </div>
            </div>

            <div id="overview" class="tabcontent">
                <table>
                    <tr>
                        <td>Tên nhà cung cấp</td>
                        <td id="overviewinfo">Nông Sản Dũng Hà Giải Phóng</td>
                    </tr>
                    <tr>
                        <td>Địa chỉ</td>
                        <td id="overviewinfo">Q. Hoàng Mai, Hà Nội</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td id="overviewinfo">anv@aisolutionsjsc.com</td>
                    </tr>
                    <tr>
                        <td>Số điện thoại</td>
                        <td id="overviewinfo">0969695454</td>
                    </tr>

                </table>
            </div>

            <div id="licen" class="tabcontent">
                <h4 id="prostatus">Trạng thái sản phẩm</h4>
                <p>...................</p>
            </div>
        </div>
        <div class="form-group pt-1">
            <button id="edit" onclick="window.location.href = 'editproductaccepted.jsp';">
                Từ chối duyệt
            </button>
            <button id="save" onclick="window.location.href = 'editproductaccepted.jsp';">
                Đồng ý duyệt
            </button>
        </div>
        <script type="text/javascript">
            const change = src => {
                document.getElementById('main1').src = src;
            };
        </script>
        <script>
            function openCity(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }
            document.getElementById("defaultOpen").click();
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

