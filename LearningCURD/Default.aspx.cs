using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindListView();
        }
    }
    public void BindListView()
    {
        string con = "Data Source=DESKTOP-52SPQU1\\SQLEXPRESS;Initial Catalog =Form; Integrated Security=true";
        SqlConnection db = new SqlConnection(con);
        db.Open();
        using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM UserInfo", db))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
        db.Close();
    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        string con = "Data Source=DESKTOP-52SPQU1\\SQLEXPRESS;Initial Catalog =Form; Integrated Security=true";
        SqlConnection db = new SqlConnection(con);
        db.Open();

        string insert = "insert into UserInfo(Fname,Mname,Lname,FatherName,MatherName) values('" + txtfName.Text + "','" + txtlName.Text + "','" + txtlName.Text + "','" + txtfathername.Text + "','" + txtmathername.Text + "')";
        SqlCommand cmd = new SqlCommand(insert, db);
        int m = cmd.ExecuteNonQuery();
        if (m != 0)
        {
            Response.Write("  < script > alert('successfully Insert Data!!') </ script >");
        }
        else
        {
            Response.Write(" < script > alert('plase  Insert Data!!') </ script >");
        }
        db.Close();
        txtfName.Text = "";
        txtlName.Text = "";
        txtmName.Text = "";
        txtmathername.Text = "";
        txtfathername.Text = "";
        BindListView();
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            Label lbl_id = (Label)e.Item.FindControl("lblid");
            Label lbl_fname = (Label)e.Item.FindControl("lblfname");
            Label lbl_mname = (Label)e.Item.FindControl("lblmname");
            Label lbl_lname = (Label)e.Item.FindControl("lbllname");
            Label lbl_fathername = (Label)e.Item.FindControl("lblfathername");
            Label lbl_mathername = (Label)e.Item.FindControl("lblmathername");

            hdnvalue.Value = lbl_id.Text;
            txtfName.Text = lbl_fname.Text;
            txtmName.Text = lbl_mname.Text;
            txtlName.Text = lbl_lname.Text;
            txtfathername.Text = lbl_fathername.Text;
            txtmathername.Text = lbl_mathername.Text;
            BindListView();

        }
    }

    protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e)
    {

    }
}