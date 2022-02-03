<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Nyadenga_Assignment1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style16 {
        margin-left: 0px;
    }
        .auto-style17 {
            width: 1529px;
            height: 142px;
            margin-left: 0px;
        }
        .auto-style19 {
            text-align: center;
        }
    .auto-style20 {
        text-decoration: underline;
        font-size: xx-large;
    }
    .auto-style21 {
        width: 1534px;
        height: 265px;
    }
    .auto-style22 {
        width: 332px;
        height: 264px;
    }
    .auto-style23 {
        text-decoration: underline;
    }
        .auto-style24 {
            width: 1520px;
            height: 142px;
            text-align: center;
            margin-left: 0px;
        }
        .auto-style25 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <p class="auto-style20" >
        <strong><em>ABOUT ME</em></strong></p>
<p>
    <span class="auto-style23">Name:</span> Takudzwa Nyadenga</p>
<p class="auto-style19">
    <span class="auto-style23">Age:</span> 22 Years old</p>
<p>
    <span class="auto-style23">Major:</span> BCIS (Buisness Computer information Systems) </p>
<p>
    <span class="auto-style23">Graudation Date:</span> May 2022</p>
    <p class="auto-style23">
        To access the Producer Life and Future Life Pages you must have an account! (I made one for you, see LogIn page)</p>
    <p>
        <asp:Button ID="bttn_registerpage" runat="server" OnClick="bttn_registerpage_Click" Text="Click here to Register an Account" />
        <asp:Button ID="bttn_loginpage" runat="server" OnClick="bttn_loginpage_Click" Text="Click here to Log In" />
        <asp:Button ID="btn_Update" runat="server" OnClick="btn_Update_Click" Text="Click here to Update Account" />
        <asp:Button ID="btn_delete" runat="server" OnClick="btn_delete_Click" Text="Click here to Delete Account" />
    </p>
<p class="auto-style23">
    Bio:</p>
<p class="auto-style21">
    &nbsp;&nbsp;<img alt="ME" class="auto-style22" src="Images/IMG_0204.png" /></p>
<p class="auto-style24">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <meta charset="utf-8" />
    <b id="docs-internal-guid-3564042d-7fff-dd7a-2fa2-6c8c4d435e98" style="font-weight:normal;"><span class="auto-style25" style="font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre; white-space: pre-wrap;">Hello, my name is Takudzwa Nyadenga, I go by Tee for short, and currently, I am a senior at the University of North Texas, expected to graduate in May 2022. I was born in Harare Zimbabwe and moved to The United States at around 1 year old. Growing up, My family moved around a lot in the Dallas and Plano area. When I was in the second grade my family settled in Allen, Texas where I graduated from Allen Highschool. I love music, food, video games and of course Technology and if I could I would do that for the rest of my life with no complaints. I want to travel the world when I graduate because life is short and I want to spend mine seeing the world 
    I live in. Thanks for reading and make sure you check out my other pages!</span></b></p>
    </asp:Content>
