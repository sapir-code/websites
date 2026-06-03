<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CoffeTrailRating.aspx.cs" Inherits="manege" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/butto.css" rel="stylesheet" />
    <link href="css/manege.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> דף דירוגים </h1>

    <style>
        

    /* ביקורת*/
.reviewBox {
    width: 250px;
    min-height: 180px;
    background-color: #FFD6E8;
    border-radius: 20px; /* פינות מעוגלות */
    padding: 15px;
    margin: 15px;
    display: inline-block;
    vertical-align: top;
    box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    text-align: right;
}

    .reviewBox h3 {
        margin-top: 0;
        color: #7a4d2f;
    }

    .reviewBox p {
        margin: 8px 0;
    }


    /* קופסה שמחזיקה את כל הפתקים */
    .reviewsContainer {
        display: flex; /* מסדר את הפתקים בשורה */
        flex-wrap: wrap; /* אם אין מקום יורד לשורה הבאה */
        justify-content: center; /* ממקם את הפתקים במרכז */
        gap: 20px; /* רווח בין פתק לפתק */
    }

    </style>
    

    <% = st %>
    <br />

</asp:Content>

