<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="harsma.aspx.cs" Inherits="harsma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> // בגלל מאסטר פייג
    <script language="javascript"> // שפת גאבה
        function checkAll() {
            // ניקוי שדות
            fnErr.innerHTML = "";
            emailErr.innerHTML = "";
            passErr.innerHTML = "";

            result = true;


            // בדיקת שגיאות
            if (checkFullName() == false)
                result = false;

            if (!checkEmail())
                result = false;

            if (!checkpass)
                result = false;

            
            return result;
            // יחזיר FALSE אם הייתה שגיאה
            // יחזיר TRUE אם הכל תקין 
        }

        function checkFullName() {
            name = Document.getElementByid("fl").value;

            if (name.length() < 2) {
                flErr.innerHTML = " שם חייב להכיל לפחות שני תווים";
                return false;
            }

            return true;
        }

        function checkEmail() {
            return true;
        }

        function checkpass() {
            return true;
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>הרשמה </h1>
 
 <form name="formPage" method="post" runat="server" onsubmit ="return checkAll();">

  <input type="text" name="fullname" id="fullname" placeholder="רשום שם">    :שם מלא
     <br />
     <span id ="fnErr"></span> // הוספה של רינת


     <input type="text" name="email" id="email" placeholder="example@gmail.com">  :כתובת מייל 
 <br />
       <span id ="emailErr"></span> // הוספה של רינת


    <input type="text" name="pasword" id="pasword" placeholder="הכנס סיסמה">   :סיסמה
 <br />
  <span id ="passErr"></span> // הוספה של רינת
<br />

      <textarea rows="5" cols="30" name="textarea1" id="textarea1" placeholder="מלל חופשי"></textarea>  :הערות
 <br />
     <input type="submit" value="שלח" />
    </form>
    <%=strResult %>


</asp:Content>

