<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master.Master" AutoEventWireup="true" CodeBehind="YemekDüzenleAdmin.aspx.cs" Inherits="Yemek_Sitesi.YemekDüzenleAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            border-style: solid;
            border-color: inherit;
            border-width: 2px;
            background-color: #FFFF66;
            margin-left: 56px;
        }
        .auto-style13 {
            text-align: right;
        }
        .auto-style14 {
            border-style: solid;
            border-color: inherit;
            border-width: 2px;
            background-color: #FFFF66;
            margin-left: 57px;
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
            <td class="auto-style13"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="256px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="124px" TextMode="MultiLine" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="160px" TextMode="MultiLine" Width="257px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="262px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Fotoğraf:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="259px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" OnClick="Button1_Click" Text="Güncelle" Width="146px" Height="34px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Text="Günün Yemeği Seç" Width="144px" Height="35px" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
