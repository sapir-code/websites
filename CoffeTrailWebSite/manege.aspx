<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manege.aspx.cs" Inherits="manege" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> דף מנהל </h1>


    <form name="managerForm" method="post" runat="server">
        <table>
           
            <tr>
            
                <input type="text" name="fn" id="fn" placeholder="רשום שם">   
            </tr>  
    <br />
             <br />
            
   <input type="text" name="email" id="email" placeholder="רשום שם משפחה"> 
              <td>  היי לתקן את זה </td>
         <input type="submit" value="שלח" />
            
        </table> 
</form>

    <% = st %>
    <br />

</asp:Content>

