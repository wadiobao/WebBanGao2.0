<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Themsp.aspx.cs" Inherits="BTLWEB2.Themsp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thêm sản phẩm</title>
    <style type="text/css">

     

        table
   {
       border-collapse: collapse;
     
    
   }
   table th
   {
       background-color:#808000;
       color: #dcefd5;
   }
   table th ,table td
   {
       
      
       border: 1px solid #C1CCB1;
       padding: 10px 20px;
   }
   

   table tr:nth-child(1)
   {
       background-color: #DFE1DC;
   }
   table tr:hover
   {
       
       background-color: #DEF3CA;
   }
   .btn:hover
   {
       background-color: #2A2A00;
       color: white;
       
   

   }
   .button
   {
       border: 0px;
       border-radius: 15px;
       
     
      left:15px;
   }
   .btn2{
       text-align:left;
   }

      div .image
   {
       width: 100px;
       height: 100px;
       overflow: hidden;
       text-align: center;
        border-radius: 15px;
   }
   div .image img
   {
       width: 100%;
       height: 100%;
       object-fit: cover;
   }
       .auto-style1 {
           width: 1536px;
           margin-left: 0px;
       }
       img{
                width :100px 
             
        }

   div .size
   {
        width: 100px;
height: 100px;
       overflow:auto;
   }

      }
        .auto-style5 {
            margin-top: 0px;
            width: 109px;
            height: 46px;
        }
        .auto-style6 {
            margin-top: 0px;
            height: 46px;
            width: 454px;
        }
        .auto-style4 {
            width: 109px;
        }
        .auto-style9 {
            width: 454px;
        }
        .auto-style7 {
            width: 109px;
            height: 46px;
        }
        .auto-style8 {
            height: 46px;
            width: 454px;
        }
        .auto-style3 {
            margin-top: 0px;
            width: 109px;
        }
        .auto-style2 {
            margin-top: 0px;
            width: 454px;
        }
        .auto-style11 {
            margin-top: 0px;
            width: 109px;
            height: 60px;
        }
        .auto-style12 {
            margin-top: 0px;
            width: 454px;
            height: 60px;
        }
        .auto-style10 {
            height: 175px;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            height: 49px;
        }
        .auto-style15 {
            width: 639px;
        }
        .auto-style16 {
            margin-left: 96px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="w3-container" style="margin:50px 0;font-size:24px"> 
        <div class="w3-breadcrumb w3-light-grey">
            <a href="Quantri.aspx" class="w3-hover-opacity" style="font-weight:normal">Quản lí sản phẩm</a> &gt;
            <span class="" style="font-weight:bold">Thêm sản phẩm</span>
        </div>
    </div>
            <asp:Button ID="btnhuythem" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Height="45px" OnClick="btnhuythem_Click" Text="Hủy thêm" Width="141px" CssClass="button btn " />
            <table aria-pressed="undefined" align="center" class="auto-style15">
                <tr>
                    <td colspan="2" Text-align="center" style="text-align: center; font-size: large; color: #808000;" class="auto-style14"><b style="text-align: center">&nbsp;Thêm sản phẩm</b></td >
                </tr>
                <tr>
                    <td class="auto-style5">Mã sản phẩm</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtmasp" runat="server" Height="30px" Width="400px"  Placeholder="nhập vào mã sản phẩm"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mã loại</td>
                    <td class="auto-style9">
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="MaLoai" DataValueField="MaLoai" Font-Size="Medium" Height="33px" Width="111px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-4PEOQ6OV\BAO;Initial Catalog=DB1.6.2;Integrated Security=True;" SelectCommand="SELECT [MaLoai] FROM [Loai]"></asp:SqlDataSource>
                        <asp:Label ID="lblmaloai" runat="server"></asp:Label>
                        <asp:Button ID="btbloai" runat="server" CssClass="auto-style16 button btn" Font-Bold="True" Font-Size="Medium" Height="42px" OnClick="btbloai_Click" Text="Thêm loại sản phẩm mới" Width="196px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Tên loại</td>
                    <td class="auto-style9">
                        <asp:Label ID="lbltenloai" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Tên sản phẩm</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtten" runat="server" Height="30px" Width="400px" AutoPostBack="True" CausesValidation="True" Placeholder="Nhập vào tên sản phẩm"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ngày sản xuất</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtnsx" runat="server" Height="30px" Width="402px"  Placeholder="Nhập vào ngày sản xuất"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtnsx" ErrorMessage="   Sai định dạng ngày giờ" ForeColor="Red" ValidationExpression="^\d{2}/\d{2}/\d{4}\s\d{2}:\d{2}:\d{2}\s(AM|SA)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ngày hết hạn</td>
                    <td class="auto-style9" >
                        <asp:TextBox ID="txtnhh" runat="server" Height="30px" Width="400px" Placeholder="Nhập vào ngày hết hạn sử dụng " > </asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtnhh" ErrorMessage="Sai định dạng ngày giờ" ForeColor="Red" ValidationExpression="^\d{2}/\d{2}/\d{4}\s\d{2}:\d{2}:\d{2}\s(AM|SA)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Đơn vị</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtdvi" runat="server" Height="30px" Width="400px"  Placeholder="Nhập vào đơn vị tính "></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Đơn giá nhập</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtdgnhap" runat="server" Height="30px" Width="400px"  Placeholder="Nhập vào giá của sản phẩm "></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Đơn giá bán</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtdgban" runat="server" Height="30px" Width="400px"  Placeholder="Nhập vào giá bán của sản phẩm "></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Số lượng</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtsl" runat="server" Height="30px" Width="400px" Placeholder="Nhập vào số lượng sản phẩm "></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ảnh</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblanh" runat="server"></asp:Label>
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Ghi chú</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtghichu" runat="server" Height="30px" Width="400px" TextMode="MultiLine"  Placeholder="Nhập vào thông tin ghi chú của sản phẩm "></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style10" style="text-align: center" >
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;
                        <asp:Button ID="btnluu" runat="server" Font-Bold="True" Font-Size="Medium" Height="45px" OnClick="btnthem_Click" Text="Lưu" Width="225px" CssClass="auto-style13 btn  button " PostBackUrl="~/QuanTri.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
