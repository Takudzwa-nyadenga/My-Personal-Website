<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Nyadenga_Assignment1.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            text-align: right;
            width: 655px;
        }
        .auto-style20 {
            text-align: center;
            width: 171px;
        }
        .auto-style21 {
            width: 655px;
        }
        .auto-style22 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <span class="auto-style22"><strong>Check a box to update your account! (This page works however, i lost access to the SQL database/servers)</strong></span></p>
    <p>
        <strong>my code is still there just commented out!</strong></p>
    <table class="auto-style7">
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style20">
                <span class="auto-style22"><strong>Email:</strong></span><br />
                <asp:Label ID="lb_email" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:CheckBox ID="cb_pass" runat="server" AutoPostBack="True" OnCheckedChanged="cb_pass_CheckedChanged" />
            </td>
            <td class="auto-style20">
                <span class="auto-style22"><strong>Password:</strong></span><br />
                <asp:Label ID="lbl_Pass" runat="server"></asp:Label>
            </td>
            <td>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style18">
                            <asp:TextBox ID="tb_password" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
                            <br />
                            <asp:Label ID="lbl_confirmPass" runat="server" Text="Confirm New Password" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">
                            <asp:TextBox ID="tb_Confirm_Pass" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
                            <asp:CompareValidator ID="compare_pass" runat="server" ControlToCompare="tb_password" ControlToValidate="tb_Confirm_Pass" ErrorMessage="*Passwords Must Match*"></asp:CompareValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:CheckBox ID="cb_FName" runat="server" AutoPostBack="True" OnCheckedChanged="cb_FName_CheckedChanged" />
            </td>
            <td class="auto-style20">
                <span class="auto-style22"><strong>First Name:</strong></span><br />
                <asp:Label ID="lbl_FName" runat="server"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_FName" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:CheckBox ID="cb_LName" runat="server" AutoPostBack="True" OnCheckedChanged="cb_LName_CheckedChanged" />
            </td>
            <td class="auto-style20">
                <span class="auto-style22"><strong>Last Name:</strong></span><br />
                <asp:Label ID="lbl_LName" runat="server"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_LName" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:CheckBox ID="cb_YOB" runat="server" AutoPostBack="True" OnCheckedChanged="cb_YOB_CheckedChanged" />
            </td>
            <td class="auto-style20">
                <span class="auto-style22"><strong>Year Of Birth:</strong></span><br />
                <asp:Label ID="lbl_YOB" runat="server"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="tb_YOB" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btn_Update" runat="server" Text="Submit Updates" OnClick="btn_Update_Click" />
            </td>
        </tr>
    </table>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @original_Email AND [Password] = @original_Password AND [FName] = @original_FName AND [LName] = @original_LName AND [YOB] = @original_YOB" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Login] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
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
            <SelectParameters>
                <asp:Parameter Name="Email" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
                <asp:Parameter Name="Email" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        Click
        <asp:HyperLink ID="hl_delete" runat="server" ForeColor="Maroon" NavigateUrl="~/Delete.aspx">here</asp:HyperLink>
        to delete your account.</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>
