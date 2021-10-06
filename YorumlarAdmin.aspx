<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master.Master" AutoEventWireup="true" CodeBehind="YorumlarAdmin.aspx.cs" Inherits="Yemek_Sitesi.YorumlarAdmin" %>
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
            height: 24px;
            width: 256px;
        }
        .auto-style14 {
        font-size: large;
    }
        .auto-style13 {
        text-align: right;
        width: 188px;
            height: 24px;
        }
    .auto-style12 {
        text-align: right;
            height: 24px;
        }
        .auto-style23 {
            text-align: left;
            width: 192px;
            height: 25px;
        }
        .auto-style24 {
            height: 25px;
            width: 145px;
        }
        .auto-style26 {
            text-align: left;
            height: 25px;
        }
        .auto-style27 {
            font-size: large;
            background-color: #99FFCC;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <asp:Panel ID="Panel2" runat="server" BorderColor="#CCFF66" CssClass="auto-style16">
        <table class="auto-style11">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click1"  />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click1"  />
                    </strong></td>
                <td>ONAYLANAN YORUMLAR</td>
            </tr>
        </table>
    </asp:Panel>


        <asp:Panel ID="Panel3" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="500px" CssClass="auto-style22">
                <ItemTemplate>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style24">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style23">
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style14" Text='<%# Eval("Yorumİçerik") %>'></asp:Label>
                            </td>
                            <td class="auto-style26">
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style27" Text='<%# Eval("YorumMail") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>          
        </asp:Panel>


    <asp:Panel ID="Panel4" runat="server" BorderColor="#CCFF66" CssClass="auto-style16">
        <table class="auto-style11">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style17" Height="30px"  Text="+" Width="30px" OnClick="Button6_Click"  />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button7" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button7_Click"  />
                    </strong></td>
                <td>ONAYLANMAYAN YORUMLAR</td>
            </tr>
        </table>
    </asp:Panel>
    
        <asp:Panel ID="Panel5" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="500px" CssClass="auto-style22">
                <ItemTemplate>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style15">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style13">
                                &nbsp;</td>
                            <td class="auto-style12">
                               <a href="YorumDetayAdmin.aspx?Yorumid=<%# Eval("Yorumid") %>" ><asp:Image ID="Image3" runat="server" Height="20px" Width="20px" ImageUrl="~/resimler/ikons/refresh.png" />
                           </a> </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>          
        </asp:Panel>
        </asp:Content>

