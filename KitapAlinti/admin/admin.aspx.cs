using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace KitapAlinti.admin
{
    public partial class admin : System.Web.UI.Page
    {
        sql bgl = new sql();

        string veri;
        string userVeri;
        string alintiID;
        string kullaniciID;

        protected void Page_Load(object sender, EventArgs e)
        {
            //alintiları getir

            SqlCommand alintiGetir = new SqlCommand("select * from alinti",bgl.sqlBaglanti());
            SqlDataReader drAlinti = alintiGetir.ExecuteReader();
            RpAlintiCek.DataSource = drAlinti;
            RpAlintiCek.DataBind();

            //alinti sil

            alintiID = Request.QueryString["alintiID"];
            veri = Request.QueryString["veri"];
            if (veri=="sil")
            {
                SqlCommand alintiSil = new SqlCommand("delete from alinti where alintiID=@n", bgl.sqlBaglanti());
                alintiSil.Parameters.AddWithValue("n", alintiID);
                alintiSil.ExecuteNonQuery();
            }

            //kullanıcı getir

            SqlCommand kullaniciGetir = new SqlCommand("select * from kullanici", bgl.sqlBaglanti());
            SqlDataReader drKullanici = kullaniciGetir.ExecuteReader();
            RpKullaniciCek.DataSource = drKullanici;
            RpKullaniciCek.DataBind();

            //kullanıcı sil

            kullaniciID = Request.QueryString["kullaniciID"];
            userVeri = Request.QueryString["userVeri"];
            if (userVeri == "sil")
            {
                SqlCommand kullaniciSil = new SqlCommand("delete from kullanici where kullaniciID=@n", bgl.sqlBaglanti());
                kullaniciSil.Parameters.AddWithValue("n", kullaniciID);
                kullaniciSil.ExecuteNonQuery();
            }

        }

        protected void kullaniciAc_Click(object sender, EventArgs e)
        {
            PanelKullanici.Visible = !PanelKullanici.Visible;
        }

        protected void alintiAc_Click(object sender, EventArgs e)
        {
            PanelAlinti.Visible = !PanelAlinti.Visible;
        }
    }
}