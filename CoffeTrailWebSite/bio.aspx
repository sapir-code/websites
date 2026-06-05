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
    object-fit: cover;
    border-radius: 50%;

    float: left;
    margin-left: 30px;
    margin-bottom: 20px;
}
</style>
        <section class="about-site">

    <div class="about-content">

<p>
   היי אני ספיר המתכנתת,
    <br />
    אני מאוד אוהבת עגלות קפה ותמיד היה קשה למצוא אחת טובה 
  לכן עשיתי אתר מסודר עם כל העגלות הכי מושלמות 
    וכמובן ביקורות עליהן כדי שתבחרו את האחת שמתאימה בדיוק לכם
    <br />
   </p>


    </div>
            <img src="images/myPic.jpeg" class="myPhoto">
</section>



</asp:Content>

