<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.Master" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            width: 91%;
            height: 138px;
        }
        .auto-style10 {
            height: 30px;
            width: 60px;
        }
        .auto-style11 {
            text-align: center;
            font-size: medium;
            height: 9px;
        }
        .auto-style12 {
            width: 215px;
        }
        .auto-style13 {
            height: 30px;
            width: 215px;
        }
        .auto-style14 {
            width: 60px;
        }
        .auto-style15 {
            width: 143px;
        }
        .auto-style16 {
            height: 30px;
            width: 143px;
        }
        .auto-style17 {
            text-align: center;
            font-size: medium;
            height: 9px;
            width: 1568px;
        }
        .auto-style19 {
            height: 30px;
            width: 1568px;
        }
        .auto-style20 {
            width: 1568px;
        }
        .auto-style21 {
            height: 17px;
            width: 60px;
        }
        .auto-style22 {
            height: 17px;
            width: 215px;
        }
        .auto-style23 {
            height: 17px;
            width: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style8">
        <tr>
            <td class="auto-style17" style="background-color: #FFFFFF; font-size: large;">&nbsp;</td>
            <td class="auto-style11" colspan="3" style="background-color: #FFFFFF; font-size: large;"><strong style="font-size: x-large; color: #99CCFF;">Login</strong></td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style14">UserName:</td>
            <td class="auto-style12">
                <asp:TextBox ID="tbUserName" runat="server" Height="15px" Width="163px"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20" rowspan="2">Online parking booking system will assist users to get rid of unwanted SMS in unmatchable way.The mobile parking is the major issue now a days.The system is about reserving parking space online.It overcomes the problem of finding a parking space in commercial areas that unnecessary consumes time.This system will save user time in search of spaces.Moreover, it will allow the user to reserve the parking space for any day and time be viewing available space. </td>
            <td class="auto-style10">Password:</td>
            <td class="auto-style13">
                <asp:TextBox ID="tbPassword" runat="server" Height="15px" TextMode="Password" Width="163px"></asp:TextBox>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="88px" />
            </td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style7" colspan="2">
                <asp:Label ID="lbLoginMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style7" colspan="2">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/userRegistration.aspx">SignUp</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:SqlDataSource ID="DSuserData" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineParkingConnectionString %>" SelectCommand="SELECT [username], [password] FROM [registration]"></asp:SqlDataSource>
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style7" colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
