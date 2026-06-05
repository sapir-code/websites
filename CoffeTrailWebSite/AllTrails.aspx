<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AllTrails.aspx.cs" Inherits="simpleSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="css/manege.css" rel="stylesheet" />
    <link href="css/addTrails.css" rel="stylesheet" /> 


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
        /* כרטיס עגלה */
.trailCard {
    width: 430px;
    background-color: #f8f5f2;
    border-radius: 40px;
    overflow: hidden;
    box-shadow: 0 4px 12px rgba(0,0,0,0.15);
    transition: 0.3s;
}
.trailInfo p {
    margin: 8px 0;
    line-height: 1.5;
    font-size:18px;
}
.trailInfo h2 {
    margin-top: 0;
    margin-bottom: 15px;
    color: #5b3d2e;
      font-size:25px;
}
    

    </style>
    <h1> העגלות שלנו </h1>

        <form name="traillist" method="post" runat="server">

            <input type="search" name="trails" id="trails" placeholder="חיפוש עגלה" />
            <input type="submit" value="שלח" />

           
         <br />

       
</form>
     <br />
 <br />
 <br />
    <br />

    <% = st %>
  
</asp:Content>

