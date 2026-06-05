<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddRating.aspx.cs" Inherits="harsma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/rating.css" rel="stylesheet" />

<script language="JavaScript">
   
    function setRating(num) {
        document.getElementById("score").value = num; // הפונקציה תקבל את המספר הכוכבים שלחצו 

        for (var i = 1; i <= 5; i++) {
            if (i <= num)
                document.getElementById("star" + i).innerHTML = "★"; // תצייר כוכב מלא לפי הנלחץ
            else
                document.getElementById("star" + i).innerHTML = "☆";
        }
    }
    // בדיקות תקינות למילוי שם בביקורת
    function checkAll() {
        
       
        trailErr.innerHTML = "";
        nameErr.innerHTML = "";
        var result = true;
         
        if (!checkName())
            result = false;

        return result;
    }

    function checkName() {

        var name = document.getElementById("fullname").value;
     
        if (name.length == 0) {
            nameErr.innerHTML = "חובה לרשום שם";
            return false;
        }

        return true;
    }


</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

          <style>
    body {
        background-image: url('images/stars.png');
        background-repeat: no-repeat; /* מונע מתמונת הרקע לחזור על עצמה מספר פעמים */
        background-attachment: fixed; /* גורם לתמונת הרקע להישאר קבועה במקום בזמן גלילת הדף */
        background-size: 100% 100%;
    }
</style>

    <h1> הוסף דירוג </h1> 
 <form name="formPage" method="post" runat="server"  onsubmit ="return checkAll();">

        שם מלא:
  <input type="text" name="fullname" id="fullname" placeholder="רשום שם">
     <br />
     
     <span style="color:red"  id="nameErr"></span>
     <br />
      <br />

     שם העגלה:
    <asp:DropDownList ID="allTrails" runat="server"> </asp:DropDownList>
 <br />
     <span style="color:red"  id="trailErr"></span>
     <br />
      <br />

   
   דירוג:
     <!-- פונקציה שאחראית לדירוג בכוכבים-->

<div class="rating">
    <span id="star1" onclick="setRating(1)">☆</span>
    <span id="star2" onclick="setRating(2)">☆</span>
    <span id="star3" onclick="setRating(3)">☆</span>
    <span id="star4" onclick="setRating(4)">☆</span>
    <span id="star5" onclick="setRating(5)">☆</span>
</div>


     <input type="hidden" name="score" id="score" value="0" />
 
<br />
   הערות:
      <textarea rows="5" cols="30" name="textarea1" id="textarea1" placeholder="מלל חופשי"></textarea>  
 <br />
     <input type="submit" value="שלח" />
    </form>
    <%=strResult %>


</asp:Content>

