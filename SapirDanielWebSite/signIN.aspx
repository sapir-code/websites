<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signIN.aspx.cs" Inherits="signIN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <h1> כניסה</h1>

     <form name="formPage" method="post" runat="server" >

         <input type="text" name="email" id="email" placeholder="example@gmail.com">  :כתובת מייל 
 <br />
    <input type="text" name="password" id="pasword" placeholder="הכנס סיסמה">   :סיסמה
 <br />
     <input type="submit" value="שלח" />
</form>
    <br />

    <% =stResult %>
</asp:Content>

