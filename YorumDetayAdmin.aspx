<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master.Master" AutoEventWireup="true" CodeBehind="YorumDetayAdmin.aspx.cs" Inherits="Yemek_Sitesi.YorumDetayAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            margin-left: 40px;
        }
        .auto-style15 {
            text-align: right;
        }
        .auto-style17 {
            border-style: solid;
            border-color: inherit;
            border-width: 2px;
            background-color: #FFFF66;
            margin-left: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Ad Soyad:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtAd" runat="server" Width="217px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Mail.</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtMail" runat="server" Width="217px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>İçerik:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="Txtiçerik" runat="server" Height="128px" TextMode="MultiLine" Width="219px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Yemek</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtYemek" runat="server" Width="217px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style17" Text="Onayla" Width="83px" OnClick="BtnOnayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
