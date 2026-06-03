using System;
using System.Collections.Generic;
using System.Data;
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

        if (Page.IsPostBack)
        {
            string fullname = Request.Form["fullname"];
            string trailName = Request.Form["trailName"];
            string score = Request.Form["score"];
            string notes = Request.Form["textarea1"];





            string sqlInsert =
                "INSERT INTO trailRating (fullname, trailName, score, note) " +
                "VALUES (N'" + fullname + "', N'" + trailName + "', N'" + score + "', N'" + notes + "')";



            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            Response.Redirect("CoffeTrailRating.aspx");
        }


        else
        {

            FillTrails();
        }

    }
    private void FillTrails()
    {
    

        string sql = "SELECT name FROM trails";

        DataTable dt = MyAdoHelper.ExecuteDataTable( sql);

        allTrails.DataSource = dt;
        allTrails.DataTextField = "name";
        allTrails.DataValueField = "name";
        allTrails.DataBind();
    }

}
   