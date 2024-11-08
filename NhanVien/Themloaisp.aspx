<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Themloaisp.aspx.cs" Inherits="BTLWEB2.Themloaisp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    
        *{
            box-sizing:border-box;
        }
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

   .size
   {
         text-align:center;   
         
       }
   .size td{
       padding: 15px 20px;

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
            <table align="center" class="size">
                <tr>
                    <td colspan="2" style="font-style: normal; font-weight: bold; text-align: center; color: #808000; font-size: large;">Thêm loại sản phẩm mới</td>
                </tr>
                <tr>
                    <td class="auto-style3">Mã loại</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtmaloai" runat="server" Height="30px" Width="317px" CssClass="auto-style6" Placeholder="Nhập vào mã loại sản phẩm "></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Tên loại</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txttenloai" runat="server" Height="30px" Width="317px" Placeholder="Nhập vào  tên loại sản phẩm "></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="btnluu" runat="server" Font-Bold="True" Font-Size="Medium" Height="45px" Text="Lưu" Width="162px" OnClick="btnluu_Click" CssClass="button btn " />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
