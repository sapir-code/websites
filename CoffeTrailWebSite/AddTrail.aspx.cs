using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class updateS : System.Web.UI.Page
{

    public string strResult = "";



    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack)
        {
            string trailName = Request.Form["trailName"];
            string area = Request.Form["area"];
           string pic = Request.Form["pic"];
            string address = Request.Form["address"];
            string days =  Request.Form["day"];
            string safe =  Request.Form["radio1"];
            string comment = Request.Form["textarea1"];


            // TODO:pucture - add
                string sqlInsert =
               "INSERT INTO trails (name, area, openingDays,safePlace, address,comment) " +
               "VALUES (N'" + trailName + "', N'" + area + "', N'" + days +
               "', N'" + safe + "', N'" + address + "', N'" + comment + "')";


              MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

               Response.Redirect("homePage.aspx");
        }

        }


}