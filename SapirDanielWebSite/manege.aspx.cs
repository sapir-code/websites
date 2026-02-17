using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class manege : System.Web.UI.Page
{

    public string st = ""; // <table>
    public string fullname;
    public string email;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
            string fullname = Request.Form["fullname"];
            string email = Request.Form["email"];

            // אוסף את כל הרשומות
            string sql = "SELECT * FROM  tUsers  WHERE" +
              " email = N'" + email + "' AND " +
               "fullname = N'" + fullname + "'";


            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count == 0)
            {
                st = " אין נתונים";
            }
            else
            {
                st += "<table border='1'>";
                st += "<tr >";
                st += "<th> שם מלא </th>";
                st += "<th> מייל </th>";
                st += "<th> סיסמה </th>";
                st += "<th> פתקים </th>";
                st += "</tr>";

            }



            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";

                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    st += "<td>";
                    st += dt.Rows[i][k];
                    st += "</td>";
                }
                st += "</tr>";
            }

            st += "</table> ";
        }
    }
}


