using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi
{
    public partial class YorumlarAdmin : System.Web.UI.Page
    {
        sqlsınıf bgl = new sqlsınıf();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            Panel5.Visible = false;

            //ONAYLI YORUMLİSTELEME
            SqlCommand komut = new SqlCommand("select * from Tbl_Yorumla where YorumOnay=1", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //ONAYLANMAYAN YORUM LİSTEME
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumla where YorumOnay=0", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();


        }





        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }
    }
}