<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Nyadenga_Assignment1.DeleteAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            text-align: right;
            width: 678px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        (This page works however, I lost access to SQL database/servers. The code is still up just commented out)<br />
        Wow, I&#39;m sad to see you leave :(</p>
    <p>
        Please Enter and Confirm your Email to delete your account.</p>
    <table class="auto-style7">
        <tr>
            <td class="auto-style19">Email:</td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="tb_email" ErrorMessage="*Must be valid emal*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Confrim Email:</td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_confirm" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="comp_valid_email" runat="server" ControlToCompare="tb_email" ControlToValidate="tb_confirm" ErrorMessage="*Email must match*"></asp:CompareValidator>
            </td>
        </tr>
    </table>
    <p>
        <asp:Button ID="btn_Delete" runat="server" OnClick="btn_Delete_Click" Text="Delete Account" />
    </p>
    <p>
        <asp:Label ID="lbl_error" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Login] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @original_Email AND [Password] = @original_Password AND [FName] = @original_FName AND [LName] = @original_LName AND [YOB] = @original_YOB">
            <DeleteParameters>
                <asp:Parameter Name="Email" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="Email" Type="String" />
            </SelectParameters>
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
