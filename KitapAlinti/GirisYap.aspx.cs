using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace KitapAlinti
{
     
    public partial class GirisYap : System.Web.UI.Page
    {
        sql bgl = new sql();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKayit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from kullanici where email=@p1 and sifre=@p2", bgl.sqlBaglanti());
            cmd.Parameters.AddWithValue("p1", TextEmailGiris.Text);
            cmd.Parameters.AddWithValue("p2", TextSifreGiris.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Response.Redirect("homeLoggedin.aspx");
            }
            else
            {
                HataliGiris.Text = "Hatalı Giriş !";
            }
        }
    }
}