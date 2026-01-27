using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class harsma : System.Web.UI.Page
{
    public string strResult;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(Page.IsPostBack)
        {
            string fullname = Request.Form["fullname"];
            string email = Request.Form["email"];
            string password = Request.Form["pasword"];
            string notes = Request.Form["textarea1"];

            string sqlInsert = "INSERT INTO tUsers (fullname, email, password, notes) " +
                   "VALUES (N'" + fullname + "', N'" + email + "', N'" + password + "', N'" + notes + "')";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            strResult = "נרשמת בהצלחה";


        }


    }
}