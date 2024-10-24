﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CapNhat.aspx.cs" Inherits="BTLWEB2.CapNhat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Cập nhật thông tin sản phẩm</title>
    <style>
      table, th, td
      {
        
          border: 1px solid gray;
      

      }
      th, td
      {
          padding :10px;
      }
      .auto-style2 {
            margin-top: 0px;
            width: 460px;
        }
        .auto-style3 {
            margin-top: 0px;
            width: 109px;
        }
        .auto-style4 {
            width: 109px;
        }
        .auto-style5 {
            margin-top: 0px;
            width: 109px;
            height: 46px;
        }
        .auto-style6 {
            margin-top: 0px;
            height: 46px;
            width: 460px;
        }
        .auto-style7 {
            width: 109px;
            height: 46px;
        }
        .auto-style8 {
            height: 46px;
            width: 460px;
        }
        .auto-style9 {
            width: 460px;
        }
        .auto-style10 {
            height: 175px;
        }
        .auto-style11 {
            margin-top: 0px;
            width: 109px;
            height: 60px;
        }
        .auto-style12 {
            margin-top: 0px;
            width: 460px;
            height: 60px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table aria-pressed="undefined" align="center"  Width="600px">
                <tr>
                    <td colspan="2" Text-align="center" style="text-align: center; font-size: large; color: #808000;"><b style="text-align: center">&nbsp;Thông tin sản phẩm</b></td >
                </tr>
                <tr>
                    <td class="auto-style5">Mã sản phẩm</td>
                    <td class="auto-style6">
                        <asp:Label ID="lblmasp" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mã loại</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblmaloai" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Tên sản phẩm</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtten" runat="server" Height="30px" Width="400px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ngày sản xuất</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtnsx" runat="server" Height="30px" Width="400px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ngày hết hạn</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtnhh" runat="server" Height="30px" Width="400px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Đơn vị</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtdvi" runat="server" Height="30px" Width="400px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Đơn giá nhập</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtdgnhap" runat="server" Height="30px" Width="400px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Đơn giá bán</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtdgban" runat="server" Height="30px" Width="400px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Số lượng</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtsl" runat="server" Height="30px" Width="400px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ảnh</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblanh" runat="server"></asp:Label>
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Ghi chú</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtghichu" runat="server" Height="30px" Width="400px" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style10" style="text-align: center" >
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;<asp:Button ID="btnsua" runat="server" Font-Bold="True" Font-Size="Medium" Height="45px" OnClick="btnsua_Click" Text="Sửa" Width="162px" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="btnthem" runat="server" Font-Bold="True" Font-Size="Medium" Height="45px" OnClick="btnthem_Click" Text="Hủy" Width="162px" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Button ID="btncapnhat" runat="server" Font-Bold="True" Font-Size="Medium" Height="45px" Text="Cập nhật " Width="162px" align="center " OnClick="btncapnhat_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnxoa" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Height="45px" OnClick="btnxoa_Click" Text="Xóa" Width="162px" />
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>