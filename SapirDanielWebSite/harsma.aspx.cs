using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class harsma : System.Web.UI.Page
{
    public string strResult = "";



    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(Page.IsPostBack)
        {
            string fullname = Request.Form["fullname"];
            string email = Request.Form["email"];
            string password = Request.Form["pasword"];
            string notes = Request.Form["textarea1"];


            string sqlSelect = "SELECT * FROM  tUsers" + " WHERE email = N'" +email +"' ";

            bool exists = MyAdoHelper.IsExist(sqlSelect);

            if (exists)
                strResult = "מייל שהוכנס קיים במערכת, הכנס אימייל חדש";
            else
            {
                string sqlInsert = "INSERT INTO tUsers " +
                       "VALUES (N'" + fullname + "', N'" + email + "', N'" + password + "', N'" + notes + "')";



                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

                Response.Redirect("homePage.aspx");
            }

        }


    }
}