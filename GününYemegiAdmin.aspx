<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master.Master" AutoEventWireup="true" CodeBehind="GününYemegiAdmin.aspx.cs" Inherits="Yemek_Sitesi.GününYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style16 {
            background-color: #B47B63;
        }
        .auto-style19 {
            width: 23px;
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
        .auto-style15 {
            height: 24px;
            width: 256px;
        }
        .auto-style14 {
        font-size: large;
    }
        .auto-style12 {
        text-align: right;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" BorderColor="#CCFF66" CssClass="auto-style16">
        <table class="auto-style11">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click1"  />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
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
                            <td class="auto-style12">
                               <a href="YemekDüzenleAdmin.aspx?Yemekidd=<%# Eval("Yemekidd")%>"> <asp:Image ID="Image3" runat="server" Height="20px" Width="20px" ImageUrl="~/resimler/ikons/choose.jpg" />
                           </a> </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>          
        </asp:Panel>
        </asp:Content>
