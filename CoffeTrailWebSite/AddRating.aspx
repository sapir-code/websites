<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddRating.aspx.cs" Inherits="harsma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>הוסף דירוג</h1>
 
 <form name="formPage" method="post" runat="server" >
  <input type="text" name="fullname" id="fullname" placeholder="רשום שם">    :שם מלא
     <br />
     <input type="text" name="trailName" id="trailName" >  :שם העגלה 
 <br />
    <input type="text" name="score" id="score" placeholder=" חמישה כוכבים">   :דירוג
 <br />
 
<br />

      <textarea rows="5" cols="30" name="textarea1" id="textarea1" placeholder="מלל חופשי"></textarea>  :הערות
 <br />
     <input type="submit" value="שלח" />
    </form>
    <%=strResult %>


</asp:Content>

