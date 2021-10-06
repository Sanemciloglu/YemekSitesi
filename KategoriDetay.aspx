<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Sitesi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style4 {
            width: 100%;
        }
        .auto-style11 {
            text-align: center;
            background-color: #FFCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="496px">
    <ItemTemplate>
        <table class="auto-style4" style="border-style: double; border-color: #996600">
            <tr>
                <td style="background-color: #CCCCFF">&nbsp;<a href="YemekDetay.aspx?Yemekidd=<%# Eval ("Yemekidd") %>"><asp:Label ID="Label3" runat="server"
                                Style="font-size: x-large; text-align: center;"
                                Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="242px" ImageUrl='<%# Eval("YemekResim") %>' Width="454px" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi:</strong><asp:Label ID="Label6" runat="server" Style="font-style: italic; background-color: #CC99FF; color: #660066; font-weight: 700;" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    -<strong>Yemek Puanı:
                    <asp:Label ID="Label8" runat="server" Style="background-color: #CC99FF; font-style: italic; color: #660066;" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
