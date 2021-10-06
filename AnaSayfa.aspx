<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Yemek_Sitesi.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style12 {
            text-align: center;
            background-color: #FFCCCC;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            font-size: xx-large;
            color: #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="496px">
        <ItemTemplate>
            <table class="auto-style4" style="border-style: double; border-color: #996600">
                <tr>
                    <td style="background-color: #CCCCFF" class="auto-style13">
                       <a href="YemekDetay.aspx?Yemekidd=<%# Eval("Yemekidd") %>"> <asp:Label ID="Label9" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekAd") %>'></asp:Label>


                   </a> </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Image ID="Image2" runat="server" BorderColor="#990033" BorderStyle="Double" Height="223px" ImageUrl='<%# Eval("YemekResim") %>' Width="278px" />
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong><asp:Label ID="Label6" runat="server" Style="font-style: italic; background-color: #CC99FF; color: #660066; font-weight: 700;" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        -<strong>Yemek Puanı:
                        <asp:Label ID="Label8" runat="server" Style="background-color: #CC99FF; font-style: italic; color: #660066;" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </strong></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div>
    </div>
</asp:Content>
