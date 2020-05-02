<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.Master" CodeBehind="userRegistration.aspx.vb" Inherits="WebApplication1.userRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 75%;
            height: 127px;
            margin-bottom: 0px;
            table-layout: auto;
        }
        .auto-style19 {
            width: 175px;
            height: 26px;
        }
        .auto-style23 {
            width: 175px;
            height: 3px;
        }
        .auto-style25 {
            width: 175px;
            height: 5px;
        }
        .auto-style35 {
            width: 175px;
            height: 1px;
        }
        .auto-style38 {
            margin-left: 0px;
        }
        .auto-style44 {
            width: 175px;
            height: 17px;
        }
        .auto-style46 {
            height: 26px;
            text-align: center;
        }
        .auto-style47 {
            width: 551px;
            height: 26px;
        }
        .auto-style48 {
            width: 551px;
            height: 17px;
        }
        .auto-style49 {
            width: 551px;
            height: 3px;
        }
        .auto-style50 {
            width: 551px;
            height: 5px;
        }
        .auto-style51 {
            width: 551px;
            height: 1px;
        }
        .auto-style52 {
            width: 199px;
            height: 26px;
        }
        .auto-style53 {
            width: 199px;
            height: 17px;
        }
        .auto-style54 {
            width: 199px;
            height: 3px;
        }
        .auto-style55 {
            width: 199px;
            height: 5px;
        }
        .auto-style56 {
            width: 199px;
            height: 1px;
        }
        .auto-style57 {
            width: 551px;
            height: 26px;
            text-align: center;
        }
        .auto-style58 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" border="0" dir="ltr" spellcheck="true" style="margin: 125px 40px 125px 125px; border: thin solid #999999; font-size: small; font-family: Arial, Helvetica, sans-serif; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; border-collapse: collapse; border-spacing: inherit; empty-cells: hide; caption-side: bottom; word-spacing: normal; letter-spacing: normal;">
        <tr>
            <td class="auto-style46" colspan="2" style="font-size: medium; background-color: #99CCFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Registration</td>
            <td class="auto-style57" style="font-size: medium; background-color: #99CCFF;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19" style="font-size: small">User Name:</td>
            <td class="auto-style52">
                <asp:TextBox ID="tbUserName" runat="server" CssClass="auto-style38" Height="17px" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style47">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUserName" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style44" aria-live="off" aria-multiline="False" aria-orientation="horizontal" style="font-size: small">Password:</td>
            <td class="auto-style53" aria-live="off" aria-multiline="False" aria-orientation="horizontal">
                <asp:TextBox ID="tbPassword" runat="server" Height="17px" TextMode="Password" ValidationGroup="    " Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style48" aria-live="off" aria-multiline="False" aria-orientation="horizontal">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" style="font-size: small">Confirm Password:</td>
            <td class="auto-style54">
                <asp:TextBox ID="tbConfirmPassword" runat="server" Height="17px" TextMode="Password" ValidationGroup="    " Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style49">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbConfirmPassword" ErrorMessage="Confirm password required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword" ErrorMessage="password not matched" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25" style="font-size: small">Email:</td>
            <td class="auto-style55">
                <asp:TextBox ID="tbEmail" runat="server" Height="17px" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style50">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email is not in correct fomat" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" style="font-size: small">Phone No:</td>
            <td class="auto-style54">
                <asp:TextBox ID="tbPhoneNo" runat="server" Width="279px" Height="17px"></asp:TextBox>
            </td>
            <td class="auto-style49">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbPhoneNo" ErrorMessage="Ph no required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style35" style="font-size: small">&nbsp;</td>
            <td class="auto-style56">
                <asp:Button ID="Button1" runat="server" Text="Registered" Width="128px" />
            </td>
            <td class="auto-style51" id="lblError">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style58" colspan="3" style="font-size: small">
                <asp:SqlDataSource ID="DSuserData" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineParkingConnectionString %>" SelectCommand="SELECT [username], [email], [phoneNo] FROM [registration]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
