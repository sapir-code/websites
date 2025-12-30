<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="harsma.aspx.cs" Inherits="harsma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>הרשמה </h1>
 
 <form name="formPage" method="post" runat="server" >
     שם מלא: <input type="text" name="fullname" id="fullname" placeholder="רשום שם">
     <br />
     כתובת מייל: <input type="text" name="email" id="email" placeholder="example@gmail.com">
 <br />
     סיסמה: <input type="text" name="pasword" id="pasword" placeholder="הכנס סיסמה">
 <br />
         כרטיס אשראי: <input type="text" name="card" id="card" placeholder="הכנס פרטי אשראי ">
<br />
    הערות:
      <textarea rows="5" cols="30" name="textarea1" id="textarea1" placeholder="תסיר/י דאגה מליבך! פרטי האשראי שלך הולכים למקום בטוח"></textarea>
 <br />
    </form>


</asp:Content>

