<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AllTrails.aspx.cs" Inherits="simpleSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="css/manege.css" rel="stylesheet" />
    <link href="css/butto.css" rel="stylesheet" />
    <link href="css/addTrails.css" rel="stylesheet" /> 


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> העגלות שלנו </h1>

        <form name="traillist" method="post" runat="server">

            <input type="search" name="trails" id="trails" placeholder="חיפוש עגלה" />
            <input type="submit" value="שלח" />

            <br />

       
</form>

    <% = st %>
    <br />
</asp:Content>

