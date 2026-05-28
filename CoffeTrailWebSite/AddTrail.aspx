<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddTrail.aspx.cs" Inherits="updateS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> הוספת עגלה </h1>

    
 <form name="formPage" method="post" runat="server" >
     <input type="text" name="trailName" id="trailName" placeholder="עגלה1" >  :שם עגלה
     <br />
     <input type="text" name="area" id="area" placeholder="שרון" >  :אזור
 <br />
  <input type="image" name="pic" id="pic">   :תמונת העגלה - לשנות
<br />
         <input type="text" name="address" id="address">  :כתובת העגלה
<br />


         ימי פעילות: 
 <br />
  יום א <input type="checkbox" name="day" value="ראשון" id="day1"> <br />
 יום ב  <input type="checkbox" name="day" value="שני" id="day2"> <br />
 יום ג   <input type="checkbox" name="day" value="שלישי"  id="day3"> <br />
    יום ד<input type="checkbox" name="day" value="רביעי" id="day4">  <br />
    יום ה<input type="checkbox" name="day" value="חמישי" id="day5">  <br />
    יום ו<input type="checkbox" name="day" value="שישי" id="day6"> <br />
    יום ש<input type="checkbox" name="day" value="שבת" id="day7"> <br />


 <br />
           
     :מרחב מוגן
      
<br />
 כן<input type="radio" name="radio1" value="כן" id="radio1"><br />
לא<input type="radio" name="radio1" value="לא" id="radio2"><br />
<br />



      <textarea rows="5" cols="30" name="textarea1" id="textarea1" placeholder="מלל חופשי"></textarea>  :תיאור העגלה
 <br />
     <input type="submit" value="שלח" />
    </form>

     <%=strResult %>


</asp:Content>

