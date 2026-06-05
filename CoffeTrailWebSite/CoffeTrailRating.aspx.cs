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
    

    protected void Page_Load(object sender, EventArgs e)
    {

    
        string sql =
        "SELECT * FROM  trailRating ";


        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = " אין נתונים";
        }
        else
        {
            st += "<div class='reviewsContainer'>"; // קופסה גדולה לכל הביקורות

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<div class='reviewBox'>"; // פתק אחד
                st += "<h3>" + dt.Rows[i]["trailName"] + "</h3>";
                st += "<p><strong>שם:</strong> "
                      + dt.Rows[i]["fullname"] + "</p>";
                st += "<p><strong>דירוג:</strong> "
                      + dt.Rows[i]["score"] + "/5</p>";
                st += "<p>"
                      + dt.Rows[i]["note"] + "</p>";
                st += "</div>"; // סוף הפתק
            }
            st += "</div>"; // סוף הקופסה הגדולה

        }
    }
}


    /*
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
    */




