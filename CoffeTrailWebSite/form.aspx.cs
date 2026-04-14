 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;



public partial class form : System.Web.UI.Page
{

    public string name;
    public string age;
    public string subjects;
    public string animal;
    public string textareaStr;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            name = "name:" + Request.Form["firstname"];
            age = "age:" + Request.Form["age"];
            subjects = "subjects:" + Request.Form["check2"];
            animal = "animal:" + Request.Form["radio1"]; 
            textareaStr = "textareaStr:" + Request.Form["textarea1"];
      


        }
    }
}