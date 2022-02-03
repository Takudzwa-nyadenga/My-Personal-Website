<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Nyadenga_Assignment1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style19 {
        text-decoration: underline;
    }
    .auto-style21 {
        width: 658px;
            height: 51px;
        }
    .auto-style22 {
        width: 658px;
        text-align: right;
    }
        .auto-style23 {
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <strong><span class="auto-style19"><em>Login for Full Site Access</em></span></strong></p>
    <p>
        <em><strong>Email= <a href="mailto:T@Test.com">T@Test.com</a></strong></em></p>
    <p>
        <em><strong>Password= test123</strong></em><strong><em><br class="auto-style19" />
    </em>
    <table class="auto-style7">
        <tr>
            <td class="auto-style22">Email:</td>
            <td class="auto-style18">
                <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
&nbsp;
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Must be a valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Password:</td>
            <td class="auto-style18">
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" SelectCommand="SELECT * FROM [Login] WHERE (([Email] = @Email) AND ([Password] = @Password))">
                    <SelectParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                Dont have an account?<br />
                Register
                <asp:HyperLink ID="hl_registration" runat="server" ForeColor="Maroon" NavigateUrl="~/Registration.aspx">here!</asp:HyperLink>
                <br />
            </td>
            <td class="auto-style23"></td>
        </tr>
    </table>
    </strong>
</p>
</asp:Content>
