<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homePage.aspx.cs" Inherits="homePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="css/homePage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <style>
    body {
        background-image: url('images/rioooo.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: 100% 100%;
    }
</style>


    <section class="about-site">

    <div class="about-content">
        <h2>ברוכים הבאים לעולם עגלות הקפה של ישראל</h2>

        <p>
            בשנים האחרונות הפכו עגלות הקפה לאחד ממקומות הבילוי האהובים ביותר בישראל.
            השילוב בין קפה איכותי, מאפים וקינוחים טעימים, נופים מרהיבים ואווירה מיוחדת
            מושך אליהן אלפי מטיילים ומבקרים מכל רחבי הארץ.
        </p>

        <p>
            עם העלייה המתמדת במספר עגלות הקפה, לעיתים קשה למצוא את המקום המתאים ביותר
            לבילוי הבא. בדיוק לשם כך הוקם האתר – כדי לרכז במקום אחד מידע נוח, ברור ונגיש
            על עגלות הקפה ברחבי ישראל.
        </p>

        <p>
            באתר תוכלו לגלות עגלות קפה במגוון אזורים בארץ, להכיר מקומות חדשים,
           ולתכנן את הבילוי המושלם שלכם בקלות ובנוחות.
        </p>

        <p>
              סוד קטן ממני:
            אם תרשמו, תוכלו לגלות דברים נוספים ומגניבים כמו ביקורת על העגלה
</p>

        <div class="about-image">
    <img src="images/homePic.jpeg">
</div>

    </div>

</section>
</asp:Content>

