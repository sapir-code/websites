<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AllTrails.aspx.cs" Inherits="simpleSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> העגלות שלנו </h1>

        <form name="traillist" method="post" runat="server">
        <table>
           
 
        <input type="submit" value="הצג עגלות" />
            
        </table> 
</form>

    <% = st %>
    <br />
</asp:Content>

