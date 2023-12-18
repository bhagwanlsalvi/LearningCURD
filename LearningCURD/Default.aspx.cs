using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Imaging;
using System.IO;
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

        string ImageFile = "";
        if (txtimg.HasFiles)
        {
            foreach (HttpPostedFile file in txtimg.PostedFiles)
            {
                ImageFile = Path.GetFileName(file.FileName);
                //image compressor
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);

                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/" + ImageFile), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams); //image extension converter
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(640, 427, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/" + ImageFile));
            }
        }
        db.Open();

        string insert = "insert into UserInfo(Fname,Mname,Lname,FatherName,MatherName,Status,Img) values('" + txtfName.Text + "','" + txtlName.Text + "','" + txtlName.Text + "','" + txtfathername.Text + "','" + txtmathername.Text + "',1,'" + ImageFile + "')";
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
            FileUpload lbl_img = (FileUpload)e.Item.FindControl("lblimgupload");

            hdnvalue.Value = lbl_id.Text;
            txtfName.Text = lbl_fname.Text;
            txtmName.Text = lbl_mname.Text;
            txtlName.Text = lbl_lname.Text;
            txtfathername.Text = lbl_fathername.Text;
            txtmathername.Text = lbl_mathername.Text;
            txtimg = lbl_img;
            BindListView();
            btnUpdate.Visible = true;
            btnCreate.Visible = false;

        }

        if (e.CommandName == "Delete")
        {
            Label lbl_id = (Label)e.Item.FindControl("lblid");
            string con = "Data Source=DESKTOP-52SPQU1\\SQLEXPRESS;Initial Catalog =Form; Integrated Security=true";
            SqlConnection db = new SqlConnection(con);
            db.Open();

            string Delete = "delete from UserInfo where Id='" + lbl_id.Text + "'";
            SqlCommand cmd = new SqlCommand(Delete, db);
            int m = cmd.ExecuteNonQuery();
            if (m != 0)
            {
                Response.Write("  < script > alert('Delete!!') </ script >");
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
        if (e.CommandName == "Active")
        {
            Label lbl_id = (Label)e.Item.FindControl("lblid");
            string con = "Data Source=DESKTOP-52SPQU1\\SQLEXPRESS;Initial Catalog =Form; Integrated Security=true";
            SqlConnection db = new SqlConnection(con);
            db.Open();

            string active = "update UserInfo set Status='1' where Id='" + lbl_id.Text + "'";
            SqlCommand cmd = new SqlCommand(active, db);
            cmd.ExecuteNonQuery();
            db.Close();
            BindListView();
        }
        if (e.CommandName == "Deactive")
        {
            Label lbl_id = (Label)e.Item.FindControl("lblid");
            string con = "Data Source=DESKTOP-52SPQU1\\SQLEXPRESS;Initial Catalog =Form; Integrated Security=true";
            SqlConnection db = new SqlConnection(con);
            db.Open();

            string deactive = "update UserInfo set Status='0' where Id='" + lbl_id.Text + "'";
            SqlCommand cmd = new SqlCommand(deactive, db);
            cmd.ExecuteNonQuery();
            db.Close();
            BindListView();
        }
    }

    protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string Id = hdnvalue.Value;
        string con = "Data Source=DESKTOP-52SPQU1\\SQLEXPRESS;Initial Catalog =Form; Integrated Security=true";
        SqlConnection db = new SqlConnection(con);
        db.Open();

        if (txtimg.HasFiles)
        {
            string ImageFile = "";
            foreach (HttpPostedFile file in txtimg.PostedFiles)
            {
                ImageFile = Path.GetFileName(file.FileName);
                          //image compressor
               var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);

                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/" + ImageFile), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams); //image extension converter
               
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(640, 427, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/" + ImageFile));
                string update = "update UserInfo set Img='" + ImageFile + "',Fname='" + txtfName.Text + "',Mname='" + txtmName.Text + "',Lname='" + txtlName.Text + "',FatherName='" + txtfathername.Text + "',MatherName='" + txtmathername.Text + "' where id='" + hdnvalue.Value + "'";
                SqlCommand cmd = new SqlCommand(update, db);
            }
        }
        else
        {

            string update1 = "update UserInfo set Fname='" + txtfName.Text + "',Mname='" + txtmName.Text + "',Lname='" + txtlName.Text + "',FatherName='" + txtfathername.Text + "',MatherName='" + txtmathername.Text + "' where id='" + hdnvalue.Value + "'";
            SqlCommand cmd1 = new SqlCommand(update1, db);
            int m = cmd1.ExecuteNonQuery();
            if (m != 0)
            {
                Response.Write("  < script > alert(' Insert Data Update!!') </ script >");
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
            btnUpdate.Visible = false;
            btnCreate.Visible = true;
        }
    }

    protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    {

    }
}