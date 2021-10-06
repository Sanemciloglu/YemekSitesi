<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master.Master" AutoEventWireup="true" CodeBehind="MesajlarAdmin.aspx.cs" Inherits="Yemek_Sitesi.MesajlarAdmin" %>
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
        .auto-style22 {
        margin-top: 0px;
    }
        .auto-style15 {
            height: 46px;
            width: 82px;
        }
        .auto-style14 {
        font-size: large;
    }
        .auto-style24 {
            width: 101%;
            height: 30px;
        }
        .auto-style26 {
            font-size: large;
            color: #660066;
        }
        .auto-style27 {
            text-align: left;
            height: 46px;
        }
        .auto-style28 {
            height: 46px;
            width: 84px;
        }
        .auto-style29 {
            text-align: left;
            height: 46px;
            width: 106px;
        }
        .auto-style32 {
            height: 46px;
            width: 82px;
            color: #000066;
            text-align: center;
            background-color: #CCCCFF;
        }
        .auto-style34 {
            text-align: center;
            height: 46px;
            width: 150px;
            background-color: #CCCCFF;
        }
        .auto-style30 {
            color: #000066;
        }
        .auto-style31 {
            text-align: center;
            height: 46px;
            width: 95px;
            color: #000066;
            background-color: #CCCCFF;
        }
        .auto-style33 {
            text-align: center;
            height: 46px;
            width: 177px;
            background-color: #CCCCFF;
        }
        .auto-style35 {
            width: 100%;
            height: 30px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" BorderColor="#CCFF66" CssClass="auto-style16">
        <table class="auto-style11">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"/>
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"/>
                    </strong></td>
                <td>MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
            <table class="auto-style35">
                <tr>
                    <td class="auto-style32" style="border-right-style: double; border-right-color: #800080; border-right-width: 1px;"><strong>Gönderen Ad Soyad</strong></td>
                    <td class="auto-style34" style="border-right-style: double; border-right-color: #800080; border-right-width: 1px;"><strong><span class="auto-style30">Gönderen </span>
                        <br class="auto-style30" />
                        <span class="auto-style30">Mail</span></strong></td>
                    <td class="auto-style31" style="border-right-style: double; border-right-color: #800080; border-right-width: 1px;"><strong>Konu</strong></td>
                    <td class="auto-style33" style="border-right-style: double; border-right-color: #800080; border-right-width: 1px;"><strong><span class="auto-style30" >Mesaj İçerik</span></strong></td>
                </tr>
            </table>
            <asp:DataList ID="DataList1" runat="server" Width="500px" CssClass="auto-style22">
                <ItemTemplate>
                    <table class="auto-style35">
                        <tr>
                            <td class="auto-style15" style="border-right-style: double; border-right-color: #800080; border-right-width: 1px;">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style26" Text='<%# Eval("MesajGönderen") %>'></asp:Label>
                            </td>
                            <td class="auto-style29" style="border-right-style: double; border-right-color: #800080; border-right-width: 1px;">
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text='<%# Eval("MesajMail") %>'></asp:Label>
                            </td>
                            <td class="auto-style28" style="border-right-style: double; border-right-color: #800080; border-right-width: 1px;">
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style14" Text='<%# Eval("MesajBaşlık") %>'></asp:Label>
                            </td>
                            <td class="auto-style27" style="border-right-style: double; border-right-color: #800080; border-right-width: 1px;">
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text='<%# Eval("Mesajİçerik") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>          
            <br />
        </asp:Panel>
        </asp:Content>
