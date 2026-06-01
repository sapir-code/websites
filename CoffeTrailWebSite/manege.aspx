<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manege.aspx.cs" Inherits="manege" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> דף מנהל </h1>


    <form name="managerForm" method="post" runat="server">
       
            
         שם: <input type="text" name="fn" id="fn" placeholder="רשום שם">   
            
    <br />   
            


         <input type="submit" value="שלח" />
            
     
</form>

    <% = st %>
    <br />

</asp:Content>

