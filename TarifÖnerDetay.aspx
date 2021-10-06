<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master.Master" AutoEventWireup="true" CodeBehind="TarifÖnerDetay.aspx.cs" Inherits="Yemek_Sitesi.TarifÖnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style4 {
            width: 100%;
        }
        .auto-style12 {
            border-style: solid;
            border-color: inherit;
            border-width: 2px;
            background-color: #FFFF66;
            margin-left: 51px;
        }
        .auto-style25 {
            font-size: medium;
            font-family: "Segoe UI";
            width: 182px;
        }
        .auto-style26 {
            width: 182px;
            height: auto;
            text-align: right;
        }
        .auto-style27 {
            font-size: medium;
            font-family: "Segoe UI";
            width: 182px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26"><strong>Tarifin Adı:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="221px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26"><strong>Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="103px" Width="226px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26"><strong>Yapılış:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="226px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26"><strong>Fotoğraf:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="231px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style26"><strong>Gönderen</strong>:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="221px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26"><strong>Gönderen</strong> <strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="221px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27"><strong>Katgori</strong></td>
                <td style="margin-left: 40px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="229px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td style="margin-left: 40px"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" ForeColor="#660066" Height="39px" OnClick="Button1_Click" style="font-size: medium; " Text="Onayla" Width="130px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td style="margin-left: 40px">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
