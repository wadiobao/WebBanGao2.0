<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Themsp.aspx.cs" Inherits="BTLWEB2.Themsp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thêm sản phẩm</title>
    <style type="text/css">

      table
      {
        
          border: 1px solid gray;
      

      }
      td
      {
          padding :10px;
      }
      td
      {
        
          border: 1px solid gray;
      

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
            <asp:Button ID="btnhuythem" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Height="45px" OnClick="btnhuythem_Click" Text="Hủy thêm" Width="141px" />
            <table aria-pressed="undefined" align="center" class="auto-style15">
                <tr>
                    <td colspan="2" Text-align="center" style="text-align: center; font-size: large; color: #808000;" class="auto-style14"><b style="text-align: center">&nbsp;Thêm sản phẩm</b></td >
                </tr>
                <tr>
                    <td class="auto-style5">Mã sản phẩm</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtmasp" runat="server" Height="30px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mã loại</td>
                    <td class="auto-style9">
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="MaLoai" DataValueField="MaLoai" Font-Size="Medium" Height="33px" Width="111px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-4PEOQ6OV\BAO;Initial Catalog=DB1.3.0;Integrated Security=True;Connect Timeout=30;Encrypt=False;" SelectCommand="SELECT [MaLoai] FROM [Loai]"></asp:SqlDataSource>
                        <asp:Label ID="lblmaloai" runat="server"></asp:Label>
                        <asp:Button ID="btbloai" runat="server" CssClass="auto-style16" Font-Bold="True" Font-Size="Medium" Height="42px" OnClick="btbloai_Click" Text="Thêm loại sản phẩm mới" Width="196px" />
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
                        <asp:TextBox ID="txtten" runat="server" Height="30px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ngày sản xuất</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtnsx" runat="server" Height="30px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ngày hết hạn</td>
                    <td class="auto-style9" >
                        <asp:TextBox ID="txtnhh" runat="server" Height="30px" Width="400px" > </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Đơn vị</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtdvi" runat="server" Height="30px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Đơn giá nhập</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtdgnhap" runat="server" Height="30px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Đơn giá bán</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtdgban" runat="server" Height="30px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Số lượng</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtsl" runat="server" Height="30px" Width="400px"></asp:TextBox>
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
                        <asp:TextBox ID="txtghichu" runat="server" Height="30px" Width="400px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style10" style="text-align: center" >
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;
                        <asp:Button ID="btnluu" runat="server" Font-Bold="True" Font-Size="Medium" Height="45px" OnClick="btnthem_Click" Text="Lưu" Width="225px" CssClass="auto-style13" />
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
