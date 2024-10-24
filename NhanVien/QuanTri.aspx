<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanTri.aspx.cs" Inherits="BTLWEB2.QuanTri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản Trị </title>
</head>
<body>
    <style>
        table, th, td
        {
          
            border: 1px solid gray;
        

        }
        th, td
        {
            padding :10px;
        }
        .auto-style1 {
            width: 1536px;
            margin-left: 0px;
        }
        .auto-style2 {
            margin-top: 0px;
            margin-left: 189px;
        }
        .auto-style3 {
            margin-left: 1000px;
        }
        img{
                 width :100px 
              
                 }
      
    </style>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" Width="324px" Height="188px">
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
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Font-Bold="True" HorizontalAlign="Center" Font-Size="XX-Large" ForeColor="#CC9900">
                QUẢN LÝ SẢN PHẨM<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnthem" runat="server" CssClass="auto-style3" Font-Bold="True" Height="45px" OnClick="btnthem_Click" Text="Thêm sản phẩm" Width="131px" />
            </asp:Panel>
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