<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master.Master" AutoEventWireup="true" CodeBehind="Kategoriler.Admin.aspx.cs" Inherits="Yemek_Sitesi.Kategoriler_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        text-align: right;
            height: 24px;
        }
    .auto-style13 {
        text-align: right;
        width: 188px;
            height: 24px;
        }
    .auto-style14 {
        font-size: large;
    }
        .auto-style15 {
            height: 24px;
            width: 256px;
        }
        .auto-style16 {
            background-color: #B47B63;
        }
        .auto-style17 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style18 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style19 {
            width: 23px;
        }
        .auto-style20 {
            margin-left: 1px;
        }
        .auto-style21 {
            margin-left: 40px;
        }
    .auto-style22 {
        margin-top: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Panel ID="Panel2" runat="server" BorderColor="#CCFF66" CssClass="auto-style16">
            <table class="auto-style11">
                <tr>
                    <td class="auto-style19"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                        </strong></td>
                    <td class="auto-style19"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                        </strong></td>
                    <td>KATEGORİ LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="500px" CssClass="auto-style22">
                <ItemTemplate>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style15">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style13">
                                <a href="Kategoriler.Admin.aspx?Kategoriid=<%# Eval("Kategoriid") %> &islem=sil"> <asp:Image ID="Image2" ImageUrl="~/resimler/ikons/deleteb.png" runat="server" Height="20px" Width="20px" BorderStyle="None" />
                            </a></td>
                            <td class="auto-style12">
                               <a href="KategoriAdminDetay.aspx?Kategoriid=<%# Eval("Kategoriid")%>"> <asp:Image ID="Image3" runat="server" Height="20px" Width="20px" ImageUrl="~/resimler/ikons/refresh.png" />
                           </a> </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>          
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" BorderColor="#CCFF66" CssClass="auto-style16">
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style19"><strong>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                            </strong></td>
                        <td class="auto-style19"><strong>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                            </strong></td>
                        <td>KATEGORİ EKLEME</td>
                    </tr>
                </table>
           </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style11">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Kategori AD:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style20"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="fb9" Text="EKLE" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
