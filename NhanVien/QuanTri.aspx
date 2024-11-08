<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanTri.aspx.cs" Inherits="BTLWEB2.QuanTri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản Trị </title>
</head>
<body>
    <style>

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
    

    table tr:nth-child(2n+1)
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
    
    </style>
    <form id="form1" runat="server">
        
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" Width="506px" Height="489px">
                <br />
                <br />
                <asp:Label ID="lblten" runat="server" Text="Xin Chào " Font-Bold="True" ForeColor="Red"></asp:Label>
                <br />
                <asp:Label ID="lblma" runat="server" Text="Mã nhân viên :" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="lblgt" runat="server" Text="Giới tính  :" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="lbldc" runat="server" Text="Địa chỉ : " Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="lblsdt" runat="server" Text="Số điện thoại :" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="lblngaysinh" runat="server" Text="Ngày sinh :" Font-Bold="True"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="btn button" Font-Bold="True" Font-Size="Small" Height="45px" OnClick="Button1_Click" Text="Về trang chủ" Width="131px" />
                <br />
                <br />
                <asp:Button ID="btnthem" runat="server" CssClass="btn button " Font-Bold="True" Height="45px" OnClick="btnthem_Click" Text="Thêm sản phẩm" Width="131px" />
                <br />
                <br />
                <br />
                <br />
                <asp:TextBox ID="txttkiem" runat="server" Height="36px" Width="150px"  Placeholder="nhập vào mã sản phẩm"></asp:TextBox>
                &nbsp;
                <asp:Button ID="btntk" runat="server" CssClass="button btn" Font-Bold="True" Font-Size="Small" Height="45px" OnClick="btntk_Click" Text="Tìm  kiếm" text-align="center" Width="132px" />
                &nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Font-Bold="True" HorizontalAlign="Center" Font-Size="XX-Large" ForeColor="#CC9900" CssClass="btn2">
                QUẢN LÝ SẢN PHẨM<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</asp:Panel>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <br />
            <asp:Table ID="tbl" runat="server"   Width="293px" Height="75px" HorizontalAlign="Center" >
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black">STT</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Mã Loại</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Tên Loại</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Mã Sản Phẩm</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Tên Sản Phẩm</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Ngày Sản Xuất</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Ngày Hết Hạn</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Đơn Vị</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Đơn Giá Nhập</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Đơn Giá Bán</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Số Lượng</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Ảnh</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True">Ghi Chú</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True" Font-Size="Medium">Cập Nhật</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        &nbsp;
        </div>
    </form>
</body>
</html>
