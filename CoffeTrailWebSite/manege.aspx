<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manege.aspx.cs" Inherits="manege" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/manege.css" rel="stylesheet" />
    <link href="css/butto.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> דף מנהל </h1>


    <form name="managerForm" method="post" runat="server">
       
            
         שם: <input type="search" name="fn" id="fn" placeholder="רשום שם">   
           
         <input type="submit" value="שלח" />
            
     
</form>

    <% = st %>
    <br />

</asp:Content>

