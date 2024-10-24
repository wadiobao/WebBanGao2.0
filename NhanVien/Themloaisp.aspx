<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Themloaisp.aspx.cs" Inherits="BTLWEB2.Themloaisp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            height: 26px;
            width: 410px;
        }
        .auto-style3 {
            height: 26px;
            width: 231px;
        }
        .auto-style4 {
            width: 231px;
        }
        .auto-style5 {
            width: 410px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td colspan="2" style="font-style: normal; font-weight: bold; text-align: center; color: #808000; font-size: large;">Thêm loại sản phẩm mới</td>
                </tr>
                <tr>
                    <td class="auto-style3">Mã loại</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtmaloai" runat="server" Height="30px" Width="317px" CssClass="auto-style6"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Tên loại</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txttenloai" runat="server" Height="30px" Width="317px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="btnluu" runat="server" Font-Bold="True" Font-Size="Medium" Height="45px" Text="Lưu" Width="162px" OnClick="btnluu_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>