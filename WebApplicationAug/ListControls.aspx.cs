using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationAug
{
    public partial class ListControls : System.Web.UI.Page
    {   
        //Adding the List Items from the Private Method to various List Controls
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                PopulateItems(DropDownList1);
                PopulateItems(BulletedList1);
                PopulateItems(RadioButtonList1);
                PopulateItems(CheckBoxList1);
                PopulateItems(ListBox1);
            }
            
        }

        //Private Method to Add List Items in the Code Behind File
        private void PopulateItems(ListControl listControl)
        {
            ListItem li1 = new ListItem("Item1", "1");
            ListItem li2 = new ListItem("Item2", "2");
            ListItem li3 = new ListItem("Item3", "3");

            listControl.Items.Add(li1);
            listControl.Items.Add(li2);
            listControl.Items.Add(li3);

        }

        //Private Method to get Multiple Selections on the ListBox
        private void GetMultipleSelections(ListControl listControl)
        {
            foreach (ListItem li in listControl.Items)
            {
                if(li.Selected)
                {
                    Response.Write("Text = " + ", Value = " + ", Index = " + listControl.Items.IndexOf(li).ToString() + "<br/>");
                }
            }
        }

        // Calling the Private Method upon button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            GetMultipleSelections(ListBox1);
        }
    }
}