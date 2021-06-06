using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
namespace KitapAlinti.admin
{
    public partial class giris : System.Web.UI.Page
    {
        sql bgl = new sql();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from admin where kullaniciAdi=@p1 and sifre=@p2",bgl.sqlBaglanti());
            cmd.Parameters.AddWithValue("p1", TxtKullaniciAd.Text);
            cmd.Parameters.AddWithValue("p2", TxtSifre.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                HataliGiris.Text = "Hatalı Giriş !";
                HataliGiris.ForeColor = Color.Red;
            }
        }
    }
}