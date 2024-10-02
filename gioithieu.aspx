﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gioithieu.aspx.cs" Inherits="WebApplication3.gieithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Giới Thiệu
    </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./userScript/style.css">
    <link rel="shortcut icon" type="image/png" href="./img/logo1.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        img + h4 {
            text-align: center;
        }

        h4 + p {
            text-align: center;
            font-style: italic;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
     <!-- Navbar -->
    <div class="w3-top" id="navheader">
        <div class="w3-bar " style="height: 60px;">
            <div class="w3-bar-item " style="margin: 0; width: 200px;">
                <a href="../index.html"><img src="./img/logo1.png" alt="logo" style="width: 100%;margin-left: 24px;" /></a>
            </div>
            <div class="w3-dropdown-click w3-right" style="background-color: transparent;" id="dropmenu">
                <button class=" fa fa-bars"
                        style="margin:20px 20px;background-color:transparent;border: none; cursor: pointer;"
                        onclick="drops()"></button>
                <div class="w3-dropdown-content w3-bar-block w3-border" style="right:0" id="Demo">
                    <a href="./buy.html" class="w3-bar-item w3-button">MUA NGAY</a>
                    <a href="../index.html" class="w3-bar-item w3-button">TRANG CHỦ</a>
                    <a href="./gioithieu.html" class="w3-bar-item w3-button">GIỚI THIỆU</a>
                    <a href="./contract.html" class="w3-bar-item w3-button">LIÊN HỆ</a>
                </div>
            </div>
            <div class="w3-sidebar w3-bar-block w3-card w3-animate-right" style="display:none;right:0;width: 20%;"
                 id="rightMenu">
                <button onclick="closeRightMenu()" class="w3-bar-item  w3-large;" style="cursor: pointer;">
                    <p style="display: inline-block;">GIỎ HÀNG</p>
                    <p class="w3-right" style="display: inline-block;font-weight: bold;"> &times;</p>
                </button>
                <h3 style="margin-left: 10%;">Giỏ hàng của bạn còn trống. </h3>
            </div>
            <button class="w3-bar-item  w3-right fa fa-shopping-cart"
                    style="margin:10px 20px;cursor: pointer;background-color: transparent" onclick="openRightMenu()"></button>
            <div class="w3-right">
                <input type="text" class="w3-bar-item w3-input w3-round-xxlarge " placeholder="Search.."
                       style="margin:10px 0; display: none;" id="searchbar">
                <button id="close-btn" class="fa fa-close"
                        style="margin:20px 20px;background-color:transparent;border: none; cursor: pointer;display: none;"
                        onclick="searchClose('close-btn')"></button>
                <button id="search-btn" class="fa fa-search"
                        style="margin:20px 20px;background-color:transparent;border: none; cursor: pointer;"
                        onclick="searchDisplay('search-btn')"></button>
            </div>
            <a href="./contract.html" class="w3-bar-item  w3-right" style="margin:10px 20px">LIÊN HỆ </a>
            <div class="w3-bar-item"></div>
            <a href="" class="w3-bar-item  w3-right" style="margin:10px 20px">GIỚI THIỆU</a>
            <a href="./buy.html" class="w3-bar-item  " style="margin:10px 20px;font-weight: bold;">SHOP NOW!</a>
            <a href="../index.html" class="w3-bar-item  w3-right" style="margin:10px 20px;">TRANG CHỦ</a>
        </div>
    </div>


    <div class="container " style="margin-top: 150px;">
        <div class="row">
            <div class="col-md-8 ">
                <h1 style=" font-size: 56px;font-weight: bold;">Sơ Lược Về Công Ty</h1>
                <h3 style="">
                    Tháng 3/2024 thành lập Công ty cổ phần VietNam's Rice: là Công ty mẹ và là đầu
                    não quản lý, cấp vốn, điều hành tất cả các Công ty con và dự án. Ông Dương Quang Bảo là Chủ tịch HĐQT.
                </h3>
                <h3>Cho đến nay, với hơn 25 ngày phát triển:</h3>
                <ul>
                    <li>Trên 5 dự án đã triển khai </li>
                    <li>Đội ngũ nhân sự trên 4 người</li>
                    <li>Đạt được sự tín nhiệm từ khách hàng và đối tác.</li>
                    <li>Đóng góp tích cực vào phát triển kinh tế và xã hội của Việt Nam.</li>
                    <li>Áp dụng công nghệ tiên tiến để nâng cao chất lượng sản phẩm và dịch vụ.</li>
                    <li>Tạo ra các cơ hội việc làm và phát triển nghề nghiệp cho cộng đồng lao động.</li>
                </ul>
            </div>
            <div class="col-md-4">
                <img src="./img/anhdaidien.jpg" alt="gao" style="width: 100%;">
                <h4 style="font-weight: bold;">Ông Dương Quang Bảo</h4>
                <p>Chủ tịch HĐQT</p>

            </div>
        </div>

    </div>


    <div id="demo" class="carousel slide" data-bs-ride="carousel">
        <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev"
                style="color: black;">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
        <!-- Indicators/dots -->
        <div class="carousel-indicators">
            <button type="button" style="color: aqua;" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
        </div>

        <!-- The slideshow/carousel -->
        <div class="carousel-inner" style="height: 700px;">
            <div class="carousel-item active" style="height: 100%;">
                <img src="./img/bacthang.jpg" alt="Chicago" class="d-block" style=" width: 100%;">
            </div>
            <div class="carousel-item" style="height: 100%;">
                <img src="./img/gatlua.jpg" alt="Chicago" class="d-block" style="width:100%">
            </div>
            <div class="carousel-item" style="height: 100%;">
                <img src="./img/lam nong.jpg" alt="Chicago" class="d-block" style="width:100%">
            </div>

        </div>
    </div>

    </div>
    <h2 class="text-center m-5" style="font-size: 56px;font-weight: bold; ">Hội Đồng Quản Trị</h2>
    <div class="container">
        <div class="row ">
            <div class=" col-xl-4 col-md-4 co-sm-6 mb-5">
                <img src="./img/anhdaidien.jpg" style="border-radius: 50%;width: 100%;"
                     alt="a">
                <h2 class="text-center" style="font-weight: bold;">Ông Tạ Mạnh Doanh</h2>
                <p class="text-center" style="font-style: italic;">Phó Chủ Tịch HĐQT</p>

            </div>
            <div class="  col-xl-4 col-md-4 co-sm-6 mb-5 ">
                <img src="./img/anhdaidien.jpg" style="border-radius: 50%;width: 100%;"
                     alt="a">
                <h2 class="text-center " style="font-weight: bold;">Ông Dương Quang Bảo</h2>
                <p class="text-center" style="font-style: italic;">Chủ tịch HĐQT</p>
            </div>
            <div class="  col-xl-4 col-md-4 co-sm-6 mb-5">
                <img src="./img/anhdaidien.jpg" style="border-radius: 50%;width: 100%;"
                     alt="a">
                <h2 class="text-center " style="font-weight: bold;">Ông Lương Văn Giang</h2>
                <p class="text-center" style="font-style: italic;">Tổng Giám Đốc IMG</p>
            </div>
        </div>
    </div>

    <div class="w3-container " style="background-image: url(https://img.vn/imgs/layout/bg_tn.jpg); height:300px">
        <h2 class="w3-center" style="color:#ffffff; font-size: 56px;font-weight: bold;">Tầm Nhìn Và Sứ Mệnh</h2><br><br>
        <p class="w3-center" style=" color: #ffffff ">
            Đầu tư chuyên nghiệp, nắm bắt cơ hội, kiên trì đến
            đích,
        </p> <br>
        <p class="w3-center" style=" color: #ffffff">
            sử dụng và cập nhật công nghệ cao, đối tác chất lượng,
            nhân sự giỏi, có trách nhiệm với xã hội và nhân viên.
        </p>
    </div>






    <h3 class="text-center " style="color: black;margin: 50px; font-size:56px;font-weight: bold;">Giá Trị Cốt Lõi</h3>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto ">
                <div class="diamond-frame">
                    <img src="https://img.vn/uploads/danhmuc/toc-do-1564025169-3nybd.png" class="img-fluid" alt="Your Image">


                </div>
                <h1 class="text-center m-5" style="color: black;">Tốc Độ</h1>
                <p class="text-center mb-5 ">Thực hiện deadline, <br> bảo đảm tiến độ</p>
            </div>
            <div class="col-md-4 mx-auto ">
                <div class="diamond-frame">
                    <img src="https://img.vn/uploads/danhmuc/hieu-qua-1564025194-zganp.png" class="img-fluid" alt="Your Image">
                </div>
                <h1 class="text-center m-5" style="color:black;">Trách Nhiệm</h1>
                <p class="text-center mb-5">Đặt chất lượng và hiệu quả công <br>việc lên trên</p>
            </div>
            <div class="col-md-4 mx-auto ">
                <div class="diamond-frame">
                    <img src="https://img.vn/uploads/danhmuc/trach-nhiem-1564025139-lbgfg.png" class="img-fluid" alt="Your Image">
                </div>
                <h1 class="text-center m-5  " style="color:black ;">Hiệu Quả</h1>
                <p class="text-center mb-5">
                    Với công việc, công trình, đối tác,<br> nhân viên, xã hội
                </p>
            </div>
        </div>
    </div>

    <!-- footer -->
    <div class="w3-container w3-row-padding" style="margin-top: 64px;" id="footer">
        <div class="w3-quarter w3-center">
            <div style="margin: 24px 36px; color: gray; display:inline-block;">
                <a href=""><img src="./img/logo1.png" alt="logo" style=""></a>
                <p>Số điện thoại:0999.999.9999</p>
                <p>Email: contractVNR@gmail.com</p>
                <p>Địa chỉ: Trâu Quỳ, Gia Lâm, Hà Nội, Việt nam</p>
            </div>
        </div>

        <div class="w3-quarter w3-center">
            <div style="display: inline-block;color: gray;margin-top: 36px; margin-left:36px;">
                <p id="foot-tilte">SẢN PHẨM</p>
                <p style="margin: 10px 0;"><a href="" style="text-decoration: none;">Gạo Việt</a></p>
                <p style="margin: 10px 0;"><a href="" style="text-decoration: none;">Gạo Thái</a></p>
                <p style="margin: 10px 0;"><a href="" style="text-decoration: none;">Gạo Mỹ</a></p>
                <p style="margin: 10px 0;"><a href="" style="text-decoration: none;">Gạo Ấn Độ</a></p>
            </div>
        </div>
        <div class="w3-quarter w3-center">
            <div style="display: inline-block;color: gray;margin-top: 36px; margin-left:36px;">
                <p id="foot-tilte">LIÊN HỆ</p>
                <p style="margin: 10px 0;"><a href="" style="text-decoration: none;">Truyền thông</a></p>
                <p style="margin: 10px 0;"><a href="" style="text-decoration: none;">Thông cáo báo chí</a></p>
                <p style="margin: 10px 0;"><a href="" style="text-decoration: none;">Tin tức sự kiện</a></p>
                <p style="margin: 10px 0;"><a href="" style="text-decoration: none;">Thư viện</a></p>
            </div>
        </div>

        <div class="w3-quarter w3-center">
            <div style="display: inline-block;color: gray; margin-top: 36px;  margin-left:36px;">
                <p id="foot-tilte" style=" margin-bottom: 31px;">CÔNG TY TNHH VIETNAM'S RICE</p>
                <p style="margin: 10px 0;"><a href="" style="text-decoration: none;">Mã số thuế:01354968720</a></p>
                <p style="margin: 10px 0;"><a href="" style="text-decoration: none;">Ngày thành lập: 15/03/2024</a></p>
                <p style="margin: 10px 0;">
                    <a href="" style="text-decoration: none;">
                        Lĩnh vực: Nông nghiệp, lương thực phẩm,<br>
                        xuất nhập khẩu lương thực, phát triển nông thôn
                    </a>
                </p>
            </div>
        </div>
    </div>

    <script src="./userScript/script.js"></script>
</body>
</html>
