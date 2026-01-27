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


             string sqSelect =
                "SELECT * FROM tUsers " +
                "WHERE Email = N' " + email + "' " + 
                "AND UserPassword = N'" + password + "'";


            bool userExists = MyAdoHelper.IsExist(sqSelect);

            if (!userExists)
                stResult = "אימייל או סיסמה שגויים";
            else
                stResult = " משתמש רשום";

            }
    }
}