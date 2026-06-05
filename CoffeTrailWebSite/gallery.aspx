<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="bio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> גלריה </h1>

   <style>
.image-gallery {
  display: grid;
  grid-template-columns: repeat(3, 1fr); /* מחלק את השורה ל-3 עמודות שוות וגדולות */
  gap: 20px;                             
  width: 100%;                           /* הגלריה תתפוס את כל רוחב המסך הזמין */
  max-width: 1200px;                     /* מונע מהתמונות להימתח יותר מדי במסכים ענקיים */
  margin: 0 auto;                        /* ממרכז את כל הגלריה לאמצע העמוד */
}

.image-gallery img {
  width: 100%;                           
  height: 250px;                         
  object-fit: cover;                     /* חותך את התמונה בצורה חכמה כדי שלא תתעוות או תימתח */
  border-radius: 8px;                    /*  פינות מעוגלות ועדינות למראה מקצועי */
}

</style>
   

  <div class="image-gallery">

  <img src="images/pic1.jpeg"/>
  <img src="images/pic2.jpeg"/>
  <img src="images/pic3.jpeg"/>
  <img src="images/pic4.jpeg" />
  <img src="images/pic5.jpeg"/>
  <img src="images/pic 6.jpeg"/>
</div>



      





</asp:Content>

