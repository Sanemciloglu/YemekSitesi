using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


namespace Yemek_Sitesi
{
    public class sqlsınıf
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-QSDB5PG;Initial Catalog=yemektarifi;Integrated Security=True");              baglan.Open();
            return baglan;
        }
    }
}