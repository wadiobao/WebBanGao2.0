<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="BTLWEB2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chi tiết sản phẩm</title>
    <link rel="stylesheet" href="userScript/style.css">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link rel="shortcut icon" type="image/png" href="../src/img/logo1.png"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
      /* Reset CSS */
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        text-decoration: none;
      }

      /* Body */
      body {
        font-family: Arial, sans-serif;

        line-height: 1.5;
        color: #333;
      }

      a{
        text-decoration: none;
      }
      /* Container */
      .container {
        max-width: 960px;
        margin: 0 auto;
      }

      /* Header */
      header {
        background-color: #333;
        color: #fff;
        padding: 10px;
        text-align: center;
      }

      /* Main content */
      main {
        padding: 20px;
      }



      .product-image img {
        width: 100%;
        height: auto;
      }

  
      .product-info h2 {
        font-size: 24px;
        margin-bottom: 10px;
      }

      .product-info p {
        margin-bottom: 10px;
      }

      .product-info button {
        margin-top: 10px;
        padding: 10px 20px;
        border: none;
        background-color: #d9b38c;
        color: black;
        font-size: 16px;
        cursor: pointer;
      }

      #a1 {
        border: 1px solid #d9b38c;
      }
    </style>
  </head>
 
   <body>
    <div class="" style="margin-top: 100px; margin-left: 7%;">
      <main>
        <section class="product-detail">
          <div class="row">
            <div class="col-md-4">
              <div class="product-image">
                <img id="img1"
                  src="https://wadiobao.github.io/webBanGao/src/img/st25-lua-tom.jpg"
                  alt="Hình ảnh sản phẩm" runat="server"/>
              
              </div>
            </div>
            <div class="col-md-4">
              <div class="product-info">
                <h1 id="nsanpham" style="font-weight: bold;" runat="server"></h1>
                <p id="gsanpham" style="color: red;font-weight: bold;" runat="server"></p>
                <h5>Mô Tả:</h5>
                <ul>
                  <p>
                    Gạo lúa tôm ST25 túi 5kg có hạt dài, trắng trong, không bạc
                    bụng, khi nấu cơm dẻo thơm, khi để nguội cơm vẫn ngon, không
                    bị cứng. Hàm lượng đạm trong gạo cao (10% protein), cao gắp
                    rưởi gạo...
                  </p>
                </ul>
                  <asp:ScriptManager ID="ScriptManager1" runat="server" />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                <ContentTemplate>
                    <div class="d-flex justify-content-center align-items-center mb-3">
                    <asp:Button ID="btnDecrease" runat="server" Text="-" OnClick="btnDecrease_Click" CssClass="w3-button w3-blue" Font-Bold="true" Font-Size="Large"/>
                    <asp:TextBox ID="SoSP" runat="server" Text="1" style="text-align: center; height: 45px; width: 60%;" />
                    <asp:Button ID="btnIncrease" runat="server" Text="+" OnClick="btnIncrease_Click" CssClass="w3-button w3-blue" Font-Bold="true" Font-Size="Large"/>
                    </div>
                        </ContentTemplate>
            </asp:UpdatePanel>
                  <div style="display:flex">
                  <asp:Button ID="mua" class="btn btn-primary" style="width: 40%;margin:5%" Text="Mua ngay" runat="server" OnClick="mua_click" Font-Bold="true" Width="500px"/>
                  <asp:Button ID="them" class="btn btn-primary" style="width: 40%;margin:5%" Text="Thêm vào giỏ hàng" OnClick="them_click" runat="server" Font-Bold="true"/>                       
                      </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-4 hidden-sm hidden-xs prd_detail_col4">
              <div>
                <div class="w3-center" id="a1">
                  <img
                    src="./icon/free_deliverd.jpg"
                    height="23"
                    width="29"
                    alt="Miễn phí vận chuyển với đơn hàng >= 250.000 đồng ( trường hợp gạo nguyên liệu >= 50kg)"
                  />
                  <p>
                    Miễn phí vận chuyển với đơn hàng &gt;= 250.000 đồng ( trường
                    hợp gạo nguyên liệu &gt;= 50kg)
                  </p>
                </div>
                <div class="w3-center" id="a1" >
                  <img
                    src="./icon/giaohangngaysaukhidat.jpg"
                    height="30"
                    width="29"
                    alt="Giao hàng ngay sau khi đặt hàng (áp dụng toàn bộ nội thành, các tỉnh khác liên hệ trực tiếp hotline)"
                  />
                  <p>
                    Giao hàng ngay sau khi đặt hàng (áp dụng toàn bộ nội thành,
                    các tỉnh khác liên hệ trực tiếp hotline)
                  </p>
                </div>
                <div class="w3-center" id="a1">
                  <img
                    src="./icon/doitra.jpg"
                    height="23"
                    width="30"
                    alt="Đổi trả hàng miễn phí nếu không hợp khẩu vị"
                  />
                  <p>Đổi trả hàng miễn phí nếu không hợp khẩu vị</p>
                </div>
                <div class="w3-center" id="a1">
                  <img
                    src="./icon/hoadon.jpg"
                    height="38"
                    width="31"
                    alt="Các đơn hàng đều có hóa đơn của đại lý Viet Nam's Rice"
                  />
                  <p>Các đơn hàng đều có hóa đơn của đại Lý Viet Nam's Rice</p>
                </div>
              </div>
            </div>
          </div>
          <div style="margin-right: 8.5%">
            <div class="w3-bar w3-white">
              <button
                class="w3-bar-item w3-button"
                onclick="openCity('TTSP');return false;"
              >
                THÔNG TIN SẢN PHẨM
              </button>
              <button class="w3-bar-item w3-button" onclick="openCity('ĐG');return false;">
                ĐÁNH GIÁ 
              </button>

            </div>

            <div
              id="TTSP"
              class="w3-container w3-display-container city w3-border"
            >
              <span
                onclick="this.parentElement.style.display='none';return false;"
                class="w3-button w3-large w3-display-topright"
                >&times;</span
              >
              <p>
                Gạo lúa tôm ST25 túi 5kg có hạt dài, trắng trong, không bạc
                bụng, khi nấu cơm dẻo thơm, khi để nguội cơm vẫn ngon, không bị
                cứng. Hàm lượng đạm trong gạo cao (10% protein), cao gắp rưởi
                gạo thường, vì vậy sẽ no trước khi đầy bụng.
              </p>

              <p>
                Lúa ST25 sẽ được gieo trồng luân canh 1 vụ lúa 1 vụ nuôi tôm.
                Lúa ST25 sẽ được trồng trực tiếp ở vùng nước lợ trong mùa mưa,
                sau vụ nuôi tôm. Gạo ST25 do được trồng trong khu vực nuôi tôm,
                cây lúa được cung cấp từ những chất dinh dưỡng tự nhiên còn xót
                lại sau vụ nuôi tôm nên hạt cơm rất đậm đà, thơm ngon dẻ chắc.
              </p>

              <p>
                Đặc biệt trong khu vực nuôi tôm nước lợ, người nông dân không sử
                dụng hóa chất để làm ảnh hưởng đến con tôm nên gạo lúa tôm ST25
                túi 5kg rất an toàn cho sức khỏe người tiêu dùng.
              </p>
            </div>

            <div
              id="ĐG"
              class="w3-container w3-display-container city w3-border"
              style="display: none"
            >
              <span
                onclick="this.parentElement.style.display='none';return false;"
                class="w3-button w3-large w3-display-topright"
                >&times;</span
              >
           
              <p>Gạo ngon , cửa hàng uy tín.</p>
            </div>

            
          </div>
        </section>
      </main>
    </div>

    <div class="w3-container" style="margin: 3% 7%;">
      <h1 id="top-seller" style="font-size: 54px;">Sản phẩm liên quan</h1><br />
      <div class="w3-row-padding" id="lienquan" runat="server">
        
      </div>
    </div>
       </body>
</asp:Content>
