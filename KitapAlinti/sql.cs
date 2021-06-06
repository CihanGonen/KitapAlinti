using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace KitapAlinti
{
    public class sql
    {
        public SqlConnection sqlBaglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-0LK44RJ; Initial Catalog=kalintiDB; Integrated Security=True");
            baglan.Open();
            SqlConnection.ClearPool(baglan);
            SqlConnection.ClearAllPools();

            return (baglan);
        }
    }
}