<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="Yemek_Sitesi.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            background-color: #FFFFFF;
        }
    .auto-style6 {
        text-align: center;
    }
    .auto-style7 {
        text-align: center;
        font-size: large;
        color: #FFFFFF;
    }
        .auto-style8 {
        font-size: large;
        color: #FFFFFF;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8">
        <strong>HAKKIMIZDA</strong></p>
        <div>
            <asp:DataList ID="DataList2" runat="server" CssClass="auto-style5" Height="96px" Width="500px">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>' CssClass="ys" ForeColor="#660033"></asp:Label>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <strong><span class="auto-style4">
    <asp:Image ID="Image1" runat="server" CssClass="auto-style5" Height="117px" ImageUrl="~/resimler/hakkımızda.jpg" Width="500px" />

        </span></strong>

    
</asp:Content>
