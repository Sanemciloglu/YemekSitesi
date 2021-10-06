<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="Yemek_Sitesi.HakkımızdaAdmin" %>
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
        .auto-style21 {
        border-style: solid;
        border-color: inherit;
        border-width: 2px;
        background-color: #FFFF66;
        margin-left: 209px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <asp:Panel ID="Panel2" runat="server" BorderColor="#CCFF66" CssClass="auto-style16">
        <table class="auto-style11">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    
        <asp:Panel ID="Panel3" runat="server">
            <table class="auto-style11">
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="230px" TextMode="MultiLine" Width="486px"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Text="Güncelle" Width="130px" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>

</asp:Content>
