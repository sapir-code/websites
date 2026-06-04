<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manege.aspx.cs" Inherits="manege" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/manege.css" rel="stylesheet" />
   <!-- <link href="css/butto.css" rel="stylesheet" />-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <style>
      
input[type=submit] {
    
    width: 45px;
    height: 35px;
    padding: 0;
    border: none;
    border-radius: 25%;
    background-color: #F5C1E1;
    color: white;
    font-size: 16px;
    cursor: pointer;
}
    /*העכבר נמצא מעל כפתור השליחה*/
    input[type=submit]:hover {
        background-color: #FBE9FA;
    }

    </style>
    <h1> דף מנהל </h1>


    <form name="managerForm" method="post" runat="server">
       
            
          <input type="search" name="fn" id="fn" placeholder="רשום שם">   
           
         <input type="submit" value="שלח" />
            
     
</form>

    <% = st %>
    <br />

</asp:Content>

