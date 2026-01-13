<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="harsma.aspx.cs" Inherits="harsma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>הרשמה </h1>
 
 <form name="formPage" method="post" runat="server" >
  <input type="text" name="fullname" id="fullname" placeholder="רשום שם">    :שם מלא
     <br />
     <input type="text" name="email" id="email" placeholder="example@gmail.com">  :כתובת מייל 
 <br />
    <input type="text" name="pasword" id="pasword" placeholder="הכנס סיסמה">   :סיסמה
 <br />
 
<br />

      <textarea rows="5" cols="30" name="textarea1" id="textarea1" placeholder="מלל חופשי"></textarea>  :הערות
 <br />
    </form>


</asp:Content>

