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

    //riohamud//

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(Page.IsPostBack)
        {
            string fullname = Request.Form["fullname"];
            string trailName = Request.Form["trailName"];
            string score = Request.Form["score"];
            string notes = Request.Form["textarea1"];



     
                string sqlInsert = 
                "INSERT INTO trailRating (fullname, trailName, score, note) " +
                "VALUES (N'" + fullname + "', N'" + trailName + "', N'" + score + "', N'" + notes + "')";



                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

                Response.Redirect("homePage.aspx");
            }

        }


    }
