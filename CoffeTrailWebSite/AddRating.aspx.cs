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
            string trailName = allTrails.SelectedValue as string; // ממיר את שם העגלה שנבחרה למחרוזת
            string score = Request.Form["score"];
            string notes = Request.Form["textarea1"];

            string sqlInsert =
                "INSERT INTO trailRating (fullname, trailName, score, note) " +
                "VALUES (N'" + fullname + "', N'" + trailName + "', N'" + score + "', N'" + notes + "')";



            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert); // הרצת שאילת על מסד הנתונים ללא קבלת תשובה

            Response.Redirect("CoffeTrailRating.aspx");
        }


        else
        {
            // פעולה שממלאה את הרשימת העגלות מתוך מסד הנתונים
            FillTrails();
        }

    }
    private void FillTrails()
    {
    

        string sql = "SELECT name FROM trails";

        DataTable dt = MyAdoHelper.ExecuteDataTable( sql); // לבקש מידע מהטבלה ולקבל בתשובה את המידע מהטבלה

        allTrails.DataSource = dt; // מקור המידע
        allTrails.DataTextField = "name"; // מה יוצג ברשימה
        allTrails.DataValueField = "name"; // איזה ערך מתקבל
        allTrails.DataBind(); // לקשר את המידע של הטבלה עם הטופס 
    }

}
   