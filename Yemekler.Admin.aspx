<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master.Master" AutoEventWireup="true" CodeBehind="Yemekler.Admin.aspx.cs" Inherits="Yemek_Sitesi.Yemekler_Admin" %>
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
            border-style: solid;
            border-color: inherit;
            border-width: 2px;
            background-color: #FFFF66;
            margin-left: 124px;
        }
        .auto-style23 {
            height: 30px;
        }
        .auto-style24 {
            margin-left: 40px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Panel ID="Panel2" runat="server" BorderColor="#CCFF66" CssClass="auto-style16">
            <table class="auto-style11">
                <tr>
                    <td class="auto-style19"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click1" />
                        </strong></td>
                    <td class="auto-style19"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                        </strong></td>
                    <td>YEMEK LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="500px">
                <ItemTemplate>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style15">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style13">
                                <a href="Yemekler.Admin.aspx?Yemekidd=<%# Eval("Yemekidd")%>&islem=sil"><asp:Image ID="Image2" ImageUrl="~/resimler/ikons/deleteb.png" runat="server" Height="20px" Width="20px" BorderStyle="None" />
                            </a></td>
                            <td class="auto-style12">
                               <a href="YemekDüzenleAdmin.aspx?Yemekidd=<%# Eval("Yemekidd")%>"> <asp:Image ID="Image3" runat="server" Height="20px" Width="20px" ImageUrl="~/resimler/ikons/refresh.png" />
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
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                            </strong></td>
                        <td class="auto-style19"><strong>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                            </strong></td>
                        <td>YEMEK EKLEME</td>
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
                <td><strong>Yemek Ad:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style20" Width="292px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style20" Height="114px" TextMode="MultiLine" Width="296px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Tarif:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style20" Height="100px" TextMode="MultiLine" Width="297px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Kategori:</strong></td>
                <td class="auto-style21">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="304px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style22" OnClick="BtnEkle_Click" Text="EKLE" Width="87px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
