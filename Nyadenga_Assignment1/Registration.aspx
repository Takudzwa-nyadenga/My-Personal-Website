<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Nyadenga_Assignment1.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            text-decoration: underline;
        }
        .auto-style20 {
            text-align: right;
            width: 685px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span class="auto-style19">Fill out Form to Create an Account! (This Page Works however, I lost access to the SQL database/servers it was coded to)</span></p>
    <p>
        my code is still there however!<br />
    </p>
    <table class="auto-style7">
        <tr>
            <td class="auto-style20">Email:</td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_email" runat="server" ControlToValidate="tb_email" ErrorMessage="*Required*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="valid_email" runat="server" ControlToValidate="tb_email" ErrorMessage="*Must Be Valid Email*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Confirm Email:</td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_Confirm_email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_confirm_email" runat="server" ControlToValidate="tb_Confirm_email" ErrorMessage="*Required*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="compare_email" runat="server" ControlToCompare="tb_email" ControlToValidate="tb_Confirm_email" ErrorMessage="*Email must match*"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Password:</td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_password" runat="server" ControlToValidate="tb_Password" ErrorMessage="*Required*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Confirm Password:</td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_Confirm_pass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_confirm_pass" runat="server" ControlToValidate="tb_Confirm_pass" ErrorMessage="*Required*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="compare_pass" runat="server" ControlToCompare="tb_Password" ControlToValidate="tb_Confirm_pass" ErrorMessage="*Password must match*"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">First Name:</td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_FName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_FName" runat="server" ControlToValidate="tb_FName" ErrorMessage="*Required*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Last Name:</td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_LName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_Lname" runat="server" ControlToValidate="tb_LName" ErrorMessage="*Required*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Year Of Birth (YYYY):</td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_YOB" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_YOB" runat="server" ControlToValidate="tb_YOB" ErrorMessage="*Required*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="bttn_register" runat="server" Text="Register" OnClick="bttn_register_Click" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @original_Email AND [Password] = @original_Password AND [FName] = @original_FName AND [LName] = @original_LName AND [YOB] = @original_YOB" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @original_Email AND [Password] = @original_Password AND [FName] = @original_FName AND [LName] = @original_LName AND [YOB] = @original_YOB">
            <DeleteParameters>
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_FName" Type="String" />
                <asp:Parameter Name="original_LName" Type="String" />
                <asp:Parameter Name="original_YOB" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_FName" Type="String" />
                <asp:Parameter Name="original_LName" Type="String" />
                <asp:Parameter Name="original_YOB" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
