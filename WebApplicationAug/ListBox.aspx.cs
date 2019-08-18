using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationAug
{
    public partial class ListBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //ListBox with Multiple selection
        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach(ListItem li in ListBox1.Items)
            {
                if(li.Selected)
                {
                    Response.Write("Text = " + li.Text + "<br/>");
                    Response.Write("Value = " + li.Value + "<br/>");
                    Response.Write("Index = " + li.Text + "<br/>");
                    Response.Write("-------------------------------------<br/>");

                }
            }
        }
    }
}