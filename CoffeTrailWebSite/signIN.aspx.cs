using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signIN : System.Web.UI.Page
{
    public string stResult = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {

            string email = Request.Form["email"];
            string password = Request.Form["password"];

            if (email == "sapir.daniel1010@gmail.com" && password == "rspdan11")
            {
                Session["nihol"] = "ok";
                Session["name"] = "  ספיר המנהלת";
                Response.Redirect("manege.aspx");
            }
            else
            {

                string sqSelect =
                   "SELECT * FROM tUsers " +
                   "WHERE email = N'" + email + "' " +
                   "AND password = N'" + password + "'";


                DataTable dt = MyAdoHelper.ExecuteDataTable(sqSelect);
               

                if (dt.Rows.Count == 0)
                {
                    stResult = "אימייל או סיסמה שגויים";
                    Session["name"] = "  אורח ";
                }
                else
                {
                    //stResult = " משתמש רשום";
                    Session["name"] = dt.Rows[0]["fullname"];
                    Session["user"] = "ok";
                    Response.Redirect("homePage.aspx");
                  
                }
                    

            }
            
            }
    }
}