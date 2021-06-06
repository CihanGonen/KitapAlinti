using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace KitapAlinti
{
    public partial class KayitOl : System.Web.UI.Page
    {
        sql bgl = new sql();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
 
        protected void BtnKayit_Click(object sender, EventArgs e)
        {
            SqlDataAdapter check = new SqlDataAdapter("select email from kullanici where email='"+ TextEmailEkle.Text+"' ",bgl.sqlBaglanti());
            DataTable dt = new DataTable();
            check.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                Response.Write("<script>alert('Girilen email adresi sistemimizde kayıtlıdır!')</script>");
                TextEmailEkle.Text = "";
                TextSifreEkle.Text = "";
            }
            else
            {
                if((TextEmailEkle.Text).ToString().Length<2 || (TextSifreEkle.Text).ToString().Length<2)
                {
                    LblKayitKontrol.Text = "Lütfen geçerli değerler giriniz.";
                    LblKayitKontrol.ForeColor = Color.Red;
                }
                else
                {
                    SqlCommand userEkle = new SqlCommand("insert into kullanici(email,sifre) values(@p1,@p2)", bgl.sqlBaglanti());
                    userEkle.Parameters.AddWithValue("p1", TextEmailEkle.Text);
                    userEkle.Parameters.AddWithValue("p2", TextSifreEkle.Text);
                    userEkle.ExecuteNonQuery();
                    Response.Redirect("GirisYap.aspx");
                }
            }
        }
    }
}