<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication3.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
       <div class="w3-container" style="margin: 150px 0px ; padding: 0 52px;"> 
        <h1 id="top-seller" style="font-size: 54px;">Sản phẩm bán chạy</h1><br />
        <div class="w3-row-padding" id="hot" runat="server">

        </div>
    </div>

    <div class="w3-container w3-light-grey" style="margin: 150px 0px ; padding: 0 52px;">
        <h1 id="top-seller" style="display: inline-block;font-size: 54px;" class="w3-half">Tất cả sản phẩm</h1><br />
        <div class="w3-row-padding" id="sp" runat="server">
            
        </div>
    </div>
    
</asp:Content>
