<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signIN.aspx.cs" Inherits="signIN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <!--  <style>
        body {
            background-image: url('images/rioooo.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }
    </style>
    -->
 

        <h1> התחברות</h1>

     <form name="formPage" method="post" runat="server" >

    כתובת מייל:     <input type="text" name="email" id="email" placeholder="example@gmail.com">  
 <br />
   סיסמה: <input type="password" name="password" id="pasword" placeholder="הכנס סיסמה">  
 <br />
     <input type="submit" value="שלח" />
</form>
    <br />

    <% =stResult %>
</asp:Content>

