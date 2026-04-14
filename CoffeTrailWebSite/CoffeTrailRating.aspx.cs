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
    public string fn;
    public string ln;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {

            // אוסף את כל הרשומות
            string sql =
            "SELECT * FROM  trailRating ";
            





            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count == 0)
            {
                st = " אין נתונים";
            }
            else
            {
                st += "<table border='1'>";
                st += "<tr >";
                st += "<th> ID </th>";
                st += "<th> שם מלא </th>";
                st += "<th> שם העגלה </th>";
                st += "<th> דירוג </th>";
                st += "<th> הערות </th>";
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


