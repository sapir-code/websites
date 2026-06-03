using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class simpleSearch : System.Web.UI.Page
{
    public string st = ""; // <table>
    public string fn;
    public string ln;
    protected void Page_Load(object sender, EventArgs e)
    {
       
            string name = Request.Form["trails"];

            // אוסף את כל הרשומות
            string sql =
            "SELECT * FROM  trails ";

            if (!String.IsNullOrEmpty(name))
            {
                sql += "WHERE name LIKE N'%" + name + "%' ";
            }



            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count == 0)
            {
                st = " אין נתונים";
            }
            else
            {
            st = "<div class='trailsBox'>";
            
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    st += "<div class='trailCard'>";

                    st += "<img class='trailImg' src='Images/" + dt.Rows[i]["picture"].ToString() + "' />";

                    st += "<div class='trailInfo'>";

                    st += "<h2>" + dt.Rows[i]["name"] + "</h2>";

                    st += "<p> <b>אזור:</b>" + dt.Rows[i]["area"] + "</p>";
                    st += "<p> <b>כתובת:</b>" + dt.Rows[i]["address"] + "</p>";
                    st += "<p> <b>מרחב מוגן:</b>" + dt.Rows[i]["safePlace"] + "</p>";
                    st += "<p><b>ימי פעילות:</b> " + dt.Rows[i]["openingDays"] + "</p>";

                    st += "<p>" + dt.Rows[i]["comment"] + "</p>";

                    st += "</div>";
                    st += "</div>";

                }
            st += "</div>";
        }

        }
    }
