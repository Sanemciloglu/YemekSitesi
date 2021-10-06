<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Sitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            font-size: x-large;
            font-family: 'Segoe UI';
            color: #660066;
        }
        .auto-style12 {
            text-align: center;
            height: 52px;
            background-color: #FFCCCC;
        }
        .auto-style13 {
            width: 102%;
            height: 40px;
        }
        .auto-style14 {
            margin-left: 0px;
        }
        .auto-style15 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" style="height: 324px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td>
                    <table class="auto-style13">
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style11" style="font-weight: 700; " Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                <asp:Image ID="Image1" runat="server" CssClass="auto-style14" Height="285px" ImageUrl='<%# Eval("YemekResim") %>' Width="458px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="border-color: #FFCCCC">
                                <strong>Malzemeler: </strong>
                                <br />
                                <asp:Label ID="Label4" runat="server" CssClass="ys" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="border-color: #FFCCCC;">
                                <strong>Hazırlanışı: </strong>
                                <br />
                                <asp:Label ID="Label5" runat="server" CssClass="ys" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-style: double; border-color: #FFCCCC"><strong>Puan:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="border-style: double; border-color: #FFCCCC;" class="auto-style4"><strong>Eklenme Tarihi</strong>:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </td>
                            <td style="border-color: #FFCCCC;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="border-color: #FFCCCC;">&nbsp;</td>
                            <td style="border-color: #FFCCCC;">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

</asp:Content>
