using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Sitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsınıf bgl = new sqlsınıf();
        string yemekidd = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekidd = Request.QueryString["yemekidd"];
            SqlCommand komut = new SqlCommand("select YemekAd From Tbl_Yemekler where yemekidd=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekidd);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read()) 
            { Label3.Text = dr[0].ToString(); }
            bgl.baglanti().Close();
            //YemekDetay
            SqlCommand komut3 = new SqlCommand("select * from Tbl_Yemekler where yemekidd=@p3", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p3", yemekidd);
            SqlDataReader dr3 = komut3.ExecuteReader();
            DataList3.DataSource = dr3;
            DataList3.DataBind();

            //Yorum
            SqlCommand komut2 = new SqlCommand("select * From Tbl_Yorumla where yemekidd=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekidd);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumla (YorumAdSoyad,YorumMail,Yorumİçerik,Yemekidd)values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekidd);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yorumunuz İletildi.");

        }
    }
}