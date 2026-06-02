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
        if (IsPostBack)
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
                st += "<table class='pinkTable'>"; // יצירת טבלה - לעיצוב
                st += "<tr >";
                st += "<th> שם עגלה </th>";
                st += "<th> אזור </th>";
                st += "<th> כתובת </th>";
                st += "<th> מקום בטוח </th>";
                st += "<th> ימי פעילות </th>";
                st += "<th> הערות </th>";
                st += "</tr>";

            }


            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";

                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    if(k== 4 )
                    {
                        continue;
                    }
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