using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            lower.Visible = false ;
        }
    }

    protected void btn_next_Click(object sender, EventArgs e)
    {
        lower.Visible = true;
    }

    protected void store_Click1(object sender, EventArgs e)
    {
        txtName.Text = txt1.Text;
        txtName2.Text = txt2.Text;
        txtName3.Text = TextBox2.Text;
        txtName4.Text = txt3.Text;
        txtName5.Text = TextBox3.Text;
        Label6.Text = TextBox4.Text;
        Label7.Text = TextBox5.Text;
        Label8.Text = TextBox6.Text;
        Label9.Text = TextBox8.Text;
        Label1.Text = TextBox9.Text;
        Label2.Text = TextBox13.Text;
        Label3.Text = TextBox14.Text;
        Label4.Text = TextBox15.Text;
        Label5.Text = TextBox16.Text;
        Label10.Text = TextBox17.Text;
        Label11.Text = TextBox18.Text;
    }
}