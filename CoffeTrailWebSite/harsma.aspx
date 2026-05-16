<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="harsma.aspx.cs" Inherits="harsma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><!--בגלל מאסטר פייג-->
    <link href="css/login.css" rel="stylesheet" />
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

      <style>
    body {
        background-image: url('images/yorky.png');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: 100% 100%;
    }
</style>


    <h1>הרשמה </h1>
 
     <form name="formPage" method="post" runat="server" onsubmit ="return checkAll();">

         שם מלא:
          <input type="text" name="fullname" id="fullname" placeholder="רשום שם">   
             <br />
             <span id ="fnErr"></span><!--הוספה של רינת-->

         
         איימיל:
             <input type="text" name="email" id="email" placeholder="example@gmail.com"> 
         <br />
               <span id ="emailErr"></span><!--הוספה של רינת-->

         
         סיסמה:
            <input type="text" name="pasword" id="pasword" placeholder="הכנס סיסמה">
         <br />
          <span id ="passErr"></span><!--הוספה של רינת-->

         
          הערות:
        <br />
              <textarea rows="5" cols="30" name="textarea1" id="textarea1" placeholder="מלל חופשי"></textarea>
         <br />
         <input type="submit" value="שלח" />
       </form>

    <%=strResult %>


</asp:Content>

