<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bio.aspx.cs" Inherits="bio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/homePage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> אודות </h1>

    <style>
  .myPhoto {
   width: 400px;
    height: 400px;
    object-fit: cover;/*  התמונה ממלא את כל השטח שהוגדר גם אם חלק ממנה ייחתך */
    border-radius: 50%;

    float: left;
    margin-left: 30px;
    margin-bottom: 20px;
}
   .about-content p {
     width: 100%;
     font-size: 30px;
     line-height: 1.9;
     color: #555;
     font-family: Calibri;
 }
</style>
        <section class="about-site">

    <div class="about-content">

<p>
   היי אני ספיר דניאל בת 16 ,
    <br />
    מנהלת האתר ותלמידת תיכון בביה"ס כצנלסון בכפר סבא.
    <br />
   אני מאוד אוהבת עגלות קפה ותמיד היה קשה למצוא אחת טובה.
    <br />
 פיתחתי את האתר שיהיה נוח ומסודר למצוא את העגלות המתאימות והמומלצות בסביבה.   
   
    <br />
   </p>


    </div>
            <img src="images/myPic.jpeg" class="myPhoto">
</section>



</asp:Content>

