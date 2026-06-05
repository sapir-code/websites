<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddTrail.aspx.cs" Inherits="updateS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/login.css" rel="stylesheet" />

    <script>
  
function checkAll() {

  
    trailErr.innerHTML = "";
    areaErr.innerHTML = "";
    addressErr.innerHTML = "";
    dayErr.innerHTML = "";
    safeErr.innerHTML = "";
    descErr.innerHTML = "";

     result = true;

    if (!checkTrailName())
        result = false;

    if (!checkArea())
        result = false;

    if (!checkAddress())
        result = false;

    if (!checkDays())
        result = false;

    if (!checkSafe())
        result = false;

    if (!checkDesc())
        result = false;

    return result;
}

function checkTrailName() {

     trail = document.getElementById("trailName").value;

    if (trail.length < 2 || trail.length > 20) {
        trailErr.innerHTML = "שם העגלה חייב להכיל בין 2 ל-20 תווים";
        return false;
    }

    return true;
}

function checkArea() {

     area = document.getElementById("area").value;

    if (area.length == 0) {
        areaErr.innerHTML = "יש להזין אזור";
        return false;
    }

    for (var i = 0; i < area.length; i++) {

         ch = area.charAt(i);

        if (!(ch >= 'א' && ch <= 'ת') && ch != ' ') {
            areaErr.innerHTML = "האזור יכול להכיל אותיות ורווחים בלבד";
            return false;
        }
    }

    return true;
}

function checkAddress() {

     address = document.getElementById("address").value;

    if (address.length == 0) {
        addressErr.innerHTML = "יש להזין כתובת";
        return false;
    }

    return true;
}

// האם לפחות אחד מהשדות בחור?
function checkDays() {
if (!document.getElementById("day1").checked &&
    !document.getElementById("day2").checked &&
    !document.getElementById("day3").checked &&
    !document.getElementById("day4").checked &&
    !document.getElementById("day5").checked &&
    !document.getElementById("day6").checked &&
    !document.getElementById("day7").checked) {

        dayErr.innerHTML = "יש לבחור לפחות יום פעילות אחד";
        return false;
    }

    return true;
}

function checkSafe() {

    if (!document.getElementById("radio1").checked &&
            !document.getElementById("radio2").checked) {
        safeErr.innerHTML = "יש לבחור האם קיים מרחב מוגן";
        return false;
    }

    return true;
}

function checkDesc() {

    desc = document.getElementById("textarea1").value;

    if (desc.length > 100) {
        descErr.innerHTML = "התיאור יכול להכיל עד 100 תווים";
        return false;
    }

    return true;
}

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> הוספת עגלה </h1>
    <style>
        form { 
    width: 400px;
    margin: auto; 
    margin-top: 50px;
    padding: 30px;
    background-color: white;
    border-radius: 25px;
    box-shadow: 0 0 15px lightgray;
    text-align: right;
}
               
      
input[type=submit] {
    
    width: 400px;
    background-color: #F5C1E1;
    color: #F5C1E1;
    border: none;
    border-radius: 10px;
    padding: 20px;
    font-size: 25px;
    cursor: pointer;
    font-family: Calibri;
    color: white;
}
    /*העכבר נמצא מעל כפתור השליחה*/
    input[type=submit]:hover {
        background-color: #FBE9FA;
        }
    </style>
 
    
 <form name="formPage" method="post" runat="server" onsubmit ="return checkAll();" enctype="multipart/form-data"> 

     שם עגלה:
     <input type="text" name="trailName" id="trailName" placeholder="עגלה1" >  

     <span style="color:red"  id="trailErr"></span>
     <br />
    

     אזור:
     <input type="text" name="area" id="area" placeholder="שרון" > 
     
     <span style="color:red"  id="areaErr"></span>
      <br />
 <br />

    
     תמונת העגלה:
      <br />
  <input type="file" name="pic" id="pic" >   
<br />
      <br />
      <br />
     
     כתובת העגלה:
     <br />
         <input type="text" name="address" id="address" placeholder="רח ,עיר "> 
     <span style="color:red"  id="addressErr"></span>
     <br />
      <br />

 <br />

         ימי פעילות: 
 <br />
    יום א <input type="checkbox" name="day" value="ראשון" id="day1"> 
    יום ב <input type="checkbox" name="day" value="שני" id="day2"> 
    יום ג <input type="checkbox" name="day" value="שלישי"  id="day3"> 
    יום ד <input type="checkbox" name="day" value="רביעי" id="day4">  
    יום ה <input type="checkbox" name="day" value="חמישי" id="day5"> 
    יום ו <input type="checkbox" name="day" value="שישי" id="day6"> 
    יום ש <input type="checkbox" name="day" value="שבת" id="day7"> 

<span style="color:red"  id="dayErr"></span>

 <br />
     <br />
           
     מרחב מוגן קרוב:
<br />
 כן<input type="radio" name="radio1" value="כן" id="radio1">
לא<input type="radio" name="radio1" value="לא" id="radio2">
      <br />
<span style="color:red"  id="safeErr"></span>
   <br />
      <br />


      תיאור העגלה:
      <textarea rows="5" cols="30" name="textarea1" id="textarea1" placeholder="מלל חופשי"></textarea> 
     <span style="color:red"  id="descErr"></span>
     <br />
     

     <input type="submit" value="שלח" />
    </form>

     <%=strResult %>


</asp:Content>

