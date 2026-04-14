using System;
using System.Collections.Generic;
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
                Session["email"] = "  ספיר המנהלת";
                Response.Redirect("manege.aspx");
            }
            else
            {

                string sqSelect =
                   "SELECT * FROM tUsers " +
                   "WHERE email = N'" + email + "' " +
                   "AND password = N'" + password + "'";


                bool userExists = MyAdoHelper.IsExist(sqSelect);

                if (!userExists)
                {
                    stResult = "אימייל או סיסמה שגויים";
                    Session["email"] = "  אורח ";
                }
                else
                {
                    //stResult = " משתמש רשום";
                    Session["email"] = "  משתמש רשום ";
                    Response.Redirect("homePage.aspx");
                  
                }
                    

            }
            
            }
    }
}