using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Sitesi
{
    public partial class YorumDetayAdmin : System.Web.UI.Page
    {
        sqlsınıf bgl = new sqlsınıf();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select YorumAdSoyad,YorumMail,Yorumİçerik,YemekAd from Tbl_Yorumla inner join Tbl_Yemekler on Tbl_Yorumla.Yemekidd=Tbl_Yemekler.Yemekidd where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtAd.Text = dr[0].ToString();
                    TxtMail.Text = dr[1].ToString();
                    Txtiçerik.Text = dr[2].ToString();
                    TxtYemek.Text = dr[3].ToString();

                }
                bgl.baglanti().Close();
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yorumla set Yorumİçerik=@p1,YorumOnay=@p2 where Yorumid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Txtiçerik.Text);
            komut.Parameters.AddWithValue("@p2", "true");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Onaylandı");

        }
    }
}