<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Sitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        text-align: right;
        font-weight: bold;
    }
    .auto-style5 {
        height: 29px;
    }
        .auto-style6 {
            border-style: solid;
            border-color: inherit;
            border-width: 2px;
            background-color: #FFFF66;
            color: #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Tarif Adı:</td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb3"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Malzemeler:</td>
        <td>
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb3"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Yapılış:</td>
        <td>
            <asp:TextBox ID="TxtYapılıs" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb3"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Fotoğraf:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb3" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Tarif Gönderen:</td>
        <td>
            <asp:TextBox ID="TxtTarifOner" runat="server" Width="250px" CssClass="tb3"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mail Adres:</td>
        <td>
            <asp:TextBox ID="TxtMailAdres" runat="server" TextMode="Email" Width="250px" CssClass="tb3"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style5">
            <asp:Button ID="BtnTarifOner" runat="server" Height="40px" style="margin-left: 51px; " Text="Tarif Öner" Width="155px" OnClick="BtnTarifOner_Click" CssClass="fb9" ForeColor="#660066" />
        </td>
    </tr>
</table>
</asp:Content>
