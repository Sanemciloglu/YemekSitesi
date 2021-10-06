<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master.Master" AutoEventWireup="true" CodeBehind="ÖneriTarifAdmin.aspx.cs" Inherits="Yemek_Sitesi.ÖneriTarifAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style16 {
            background-color: #B47B63;
        }
        .auto-style19 {
            width: 23px;
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
        .auto-style20 {
            text-align: right;
            height: 24px;
            color: #FF0066;
        }
        .auto-style21 {
            height: 24px;
            width: 159px;
        }
        .auto-style22 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" BorderColor="#CCFF66" CssClass="auto-style16">
        <table class="auto-style11">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>ÖNERİLEN YEMEKLER LİSTESİ (ONAYLI)</td>
            </tr>
        </table>
    </asp:Panel>
    
        <asp:Panel ID="Panel3" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="500px">
                <ItemTemplate>
                    <table class="auto-style11" align="right">
                        <tr>
                            <td class="auto-style21">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </td>
                            <strong>
                            <td class="auto-style20">
                                <strong>ONAYLANDI
                                <br />
                                <span class="auto-style22">(Onaylanan tariflere yemekler sekmesinden erişebilirsiniz)</span></strong></td>
                            </strong>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>          
        </asp:Panel>

     <asp:Panel ID="Panel4" runat="server" BorderColor="#CCFF66" CssClass="auto-style16">
        <table class="auto-style11">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style18" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td>ÖNERİLEN YEMEKLER LİSTESİ (ONAYSIZ)</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel5" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="500px">
                <ItemTemplate>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style15">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </td>
                            <strong>
                            <td class="auto-style12">
                              <a href="TarifÖnerDetay.aspx?Tarifid=<%# Eval("Tarifid") %>" > <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/resimler/ikons/öneri.png" Width="20px" />
                             </a>   </td>
                            </strong>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>          
        </asp:Panel>
        </asp:Content>
