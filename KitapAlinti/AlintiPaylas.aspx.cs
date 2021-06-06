using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace KitapAlinti
{
    public partial class AlintiPaylas : System.Web.UI.Page
    {
        sql bgl = new sql();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAlintiPaylas_Click(object sender, EventArgs e)
        {
            if ((TextBaslik.Text).ToString().Length < 2 || (TextAlinti.Text).ToString().Length < 2 || (TextKitap.Text).ToString().Length < 2)
            {
                HataliGiris.Text = "Lütfen geçerli değerler giriniz.";
                HataliGiris.ForeColor = Color.Red;
            }
            else
            { 
                SqlCommand alintiEkle = new SqlCommand("insert into alinti(alintiBaslik,alintiMetni,alintiKitap) values(@p1,@p2,@p3)", bgl.sqlBaglanti());
                alintiEkle.Parameters.AddWithValue("p1", TextBaslik.Text);
                alintiEkle.Parameters.AddWithValue("p2", TextAlinti.Text);
                alintiEkle.Parameters.AddWithValue("p3", TextKitap.Text);
                alintiEkle.ExecuteNonQuery();
                Response.Redirect("AlintiPaylas.aspx");
            }
        }
    }
}