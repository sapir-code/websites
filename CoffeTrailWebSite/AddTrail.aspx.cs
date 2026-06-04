using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;


public partial class updateS : System.Web.UI.Page
{

    public string strResult = "";



    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack)
        {
            string trailName = Request.Form["trailName"];
            string area = Request.Form["area"];
            string address = Request.Form["address"];
            string days =  Request.Form["day"];
            string safe =  Request.Form["radio1"];
            string comment = Request.Form["textarea1"];

            HttpPostedFile file = Request.Files["pic"]; // לוקח א אוביקט התמונה מהטופס 
            string pic = Path.GetFileName(file.FileName); // מוצא את שם הקובץ של התמונה מתוך האוביקט תמונה
            file.SaveAs(Server.MapPath("~/Images/" + pic)); // שומר את הקובץ תחת תקיית תמונות איפה שהשרת נמצא
           // למסד הנתונים ישמר רק שם הקובץ


            string sqlInsert =
               "INSERT INTO trails (name, area, openingDays,safePlace,picture,address,comment) " +
               "VALUES (N'" + trailName + "', N'" + area + "', N'" + days +
               "', N'" + safe + "', N'" + pic + "', N'" + address + "', N'" + comment + "')";


              MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

               Response.Redirect("AllTrails.aspx");
        }

        }


}