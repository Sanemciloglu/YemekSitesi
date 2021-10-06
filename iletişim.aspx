<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="iletişim.aspx.cs" Inherits="Yemek_Sitesi.iletişim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
            text-align: right;
            font-weight: bold;
        }
        .auto-style6 {
            text-align: center;
            font-size: large;
            color: #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style6" colspan="2" style="background-color: #FFFF66"><strong>Mesaj Gönder</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb3" Width="231px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb3" Width="232px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Konu:</td>
        <td>
            <asp:TextBox ID="TxtKonu" runat="server" CssClass="tb3" Width="231px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mesajınız:</td>
        <td>
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb3" Height="52px" TextMode="MultiLine" Width="233px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" style="font-size: medium; color: #660066; margin-left: 52px;" Text="Gönder" Width="136px" CssClass="fb9" Height="42px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
