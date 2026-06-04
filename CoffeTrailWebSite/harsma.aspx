<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="harsma.aspx.cs" Inherits="harsma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><!--בגלל מאסטר פייג-->
    <link href="css/login.css" rel="stylesheet" />

    <script language="javascript"> // שפת גאבה
        function checkAll() {
            // ניקוי שדות
            fnErr.innerHTML = "";
            emailErr.innerHTML = "";
            passErr.innerHTML = "";

           var result = true;


            // בדיקת שגיאות
            if (checkFullName() == false)
                result = false;

            if (!checkEmail())
                result = false;

            if (!checkpass())
                result = false;

            
            return result;
            // יחזיר FALSE אם הייתה שגיאה
            // יחזיר TRUE אם הכל תקין 
        }

        function checkFullName() {
           var name = document.getElementById("fullname").value;

            if (name.length < 2) {
                fnErr.innerHTML = " שם חייב להכיל לפחות שני תווים";
                return false;
            }

            for (var i = 0; i < name.length; i++) {
                var ch = name.charAt(i);

                if (!(ch >= 'A' && ch <= 'Z') &&
                    !(ch >= 'a' && ch <= 'z') &&
                    !(ch >= 'א' && ch <= 'ת') &&
                    ch != ' ') {

                    fnErr.innerHTML = "השם אינו יכול להכיל מספרים או תווים מיוחדים";
                    return false;
                }
            }

            if (name.length > 10) {
                fnErr.innerHTML = " שם לא יכול להכיל יותר מ10 תווים";
                return false;
            }

            return true;
        }




        function checkEmail() {
            var email = document.getElementById("email").value;

            var atPos = email.indexOf("@");

            if (atPos == -1) {
                emailErr.innerHTML = "חסר @ בכתובת המייל";
                return false;
            }

            if (atPos == 0) {
                emailErr.innerHTML = "@ לא יכול להיות התו הראשון";
                return false;
            }

            return true;
        }




        function checkpass() {
                var pass = document.getElementById("pasword").value;

                if (pass.length < 8) {
                    passErr.innerHTML = "הסיסמה חייבת להכיל לפחות 8 תווים";
                    return false;
                }

                if (pass.indexOf(" ") != -1) {
                    passErr.innerHTML = "אסור להכניס רווחים בסיסמה";
                    return false;
                }

                var hasLetter = false;
                var hasDigit = false;

                for (var i = 0; i < pass.length; i++) {
                    var ch = pass.charAt(i);

                    if ((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z'))
                        hasLetter = true;

                    if (ch >= '0' && ch <= '9')
                        hasDigit = true;
                }

                if (!hasLetter) {
                    passErr.innerHTML = "\n הסיסמה חייבת להכיל אות באנגלית \n";
                    return false;
                }

                if (!hasDigit) {
                    passErr.innerHTML = "הסיסמה חייבת להכיל ספרה";
                    return false;
                }

                return true;
            }

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <!--<style>
    body {
        background-image: url('images/yorky.png');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: 100% 100%;
    }
</style>
    -->
      

    <h1>הרשמה </h1>
 
     <form name="formPage" method="post" runat="server" onsubmit ="return checkAll();">

         שם מלא:
          <input type="text" name="fullname" id="fullname" placeholder="רשום שם">   
             <br />
            <span id="fnErr" style="color:red"></span><!--הוספה של רינת--> 
         <br />
         
         איימיל:
             <input type="text" name="email" id="email" placeholder="example@gmail.com"> 
         <br />
              <span id="emailErr" style="color:red"></span><!--הוספה של רינת-->
           <br />
         
         סיסמה:
            <input type="password" name="pasword" id="pasword" placeholder="הכנס סיסמה">
         <br />
         <span id="passErr" style="color:red"></span><!--הוספה של רינת-->
           <br />
         
          הערות:
        <br />
              <textarea rows="5" cols="30" name="textarea1" id="textarea1" placeholder="מלל חופשי"></textarea>
         <br />
         <input type="submit" value="שלח" />
       </form>

    <%=strResult %>


</asp:Content>

