<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Sitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            font-weight: normal;
        }
        .auto-style6 {
            color: #660033;
        }
    .auto-style7 {
        color: #660066;
    }
        .auto-style9 {
            width: 125px;
        }
        .auto-style10 {
            text-align: right;
            width: 125px;
        }
        .auto-style11 {
            text-align: left;
        }
        .auto-style12 {
            border-style: solid;
            border-color: inherit;
            border-width: 2px;
            background-color: #FFFF66;
            margin-left: 0px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            color: #660066;
            text-align: left;
        }
        .auto-style15 {
            font-size: x-large;
        }
        .auto-style16 {
            text-align: center;
            background-color: #FFCCCC;
        }
        .auto-style17 {
            background-color: #FFCCCC;
            color: #660066;
        }
        .auto-style22 {
            width: 140px;
            font-size: medium;
            font-family: "Segoe UI";
        }
        .auto-style23 {
            text-align: right;
            width: 140px;
            height: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style16">
        <strong>
    <asp:Label ID="Label3" runat="server" style="font-size: xx-large; " Text="Label" CssClass="auto-style17"></asp:Label>
    </strong>
    </div>
    &nbsp;
    <br />
    <div class="auto-style11">
    <asp:DataList ID="DataList3" runat="server">
        <ItemTemplate>
            <table class="auto-style4" style="border-style: double; border-top-color: #996600; border-right-color: #996600; border-bottom-color: #996600; border-left-color: #996600">
                <tr>
                    <td><span class="auto-style5"><strong>Malzemeler:</strong></span><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekMalzeme") %>' style="font-size: medium"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi:</strong><asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarif") %>' style="font-size: medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Image ID="Image2" runat="server" Height="220px" ImageUrl='<%# Eval("YemekResim") %>' Width="458px" />
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong><asp:Label ID="Label9" runat="server" style="font-size: small; font-style: italic; color: #CC00FF;" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        -<strong>Yemek Puanı:</strong><asp:Label ID="Label10" runat="server" style="font-size: small; font-style: italic; color: #CC33FF;" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </div>
    <div style="background-color: #FFFF66; " class="auto-style14"> <strong><span class="auto-style15">YORUMLAR</span></strong> </div>
    <br />
    <div class="auto-style11">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" style="font-size: large; font-weight: 700;" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: double">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumİçerik") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" style="font-size: x-small; font-style: italic; color: #CC0099;" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </div>
    <div style="background-color: #FFFF66; text-align: center;" class="auto-style7"> <strong>*YORUM YAP* </strong> </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Ad Soyad</strong>:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="338px" CssClass="tb3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Mail</strong>:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="338px" CssClass="tb3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Yorumunuz</strong>:</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="340px" CssClass="tb3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td style="margin-left: 40px" class="auto-style13">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" ForeColor="#660066" Height="39px" OnClick="Button1_Click" style="font-size: medium; " Text="Gönder" Width="130px" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td style="margin-left: 40px">&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
