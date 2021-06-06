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
    public partial class homeLoggedin : System.Web.UI.Page
    {
        sql bgl = new sql();

        string queryParam;
        string searchParam;

        protected void Page_Load(object sender, EventArgs e)
        {
            queryParam = Request.QueryString["queryParam"];
            if (queryParam != null)
            {
                SqlCommand alintiBul = new SqlCommand("select * from alinti where(alintiBaslik like '%' + @ara + '%' or alintiMetni like '%' + @ara + '%')", bgl.sqlBaglanti());
                alintiBul.Parameters.AddWithValue("ara", queryParam);
                alintiBul.ExecuteNonQuery();
                SqlDataReader drAlintiBul = alintiBul.ExecuteReader();
                RpAlintilar.DataSource = drAlintiBul;
                RpAlintilar.DataBind();

            }
            else
            {
                SqlCommand alintiGetir = new SqlCommand("select * from alinti", bgl.sqlBaglanti());
                SqlDataReader drAlinti = alintiGetir.ExecuteReader();
                RpAlintilar.DataSource = drAlinti;
                RpAlintilar.DataBind();
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            searchParam = TextSearch.Text;
            Response.Redirect("homeLoggedin.aspx?queryParam=" + searchParam);
        }
    }
}