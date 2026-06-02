<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddRating.aspx.cs" Inherits="harsma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/rating.css" rel="stylesheet" />

<script>
    function setRating(num) {
        document.getElementById("score").value = num;

        for (var i = 1; i <= 5; i++) {
            if (i <= num)
                document.getElementById("star" + i).innerHTML = "★";
            else
                document.getElementById("star" + i).innerHTML = "☆";
        }
    }
</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

          <style>
    body {
        background-image: url('images/stars.jpeg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: 100% 100%;
    }
</style>

    <h1> הוסף דירוג </h1> 
 <form name="formPage" method="post" runat="server" >

         :שם מלא
  <input type="text" name="fullname" id="fullname" placeholder="רשום שם">
     <br />

     :שם העגלה 
    <asp:DropDownList ID="allTrails" runat="server"> </asp:DropDownList>
 <br />

   
   :דירוג
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
     :הערות
      <textarea rows="5" cols="30" name="textarea1" id="textarea1" placeholder="מלל חופשי"></textarea>  
 <br />
     <input type="submit" value="שלח" />
    </form>
    <%=strResult %>


</asp:Content>

