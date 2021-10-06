using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Sitesi
{
    public partial class TarifÖnerDetay : System.Web.UI.Page
    {
        sqlsınıf bgl = new sqlsınıf();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_tarifler where Tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox5.Text = dr[5].ToString();
                    TextBox6.Text = dr[6].ToString();

                }
                bgl.baglanti().Close();
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Onaylama
            SqlCommand komut3 = new SqlCommand("update Tbl_tarifler set TarifDurum=1 where Tarifid=@p1",bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1",id);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği onaylanınca anasayfaya ekleme

            SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2",TextBox2.Text);
            komut2.Parameters.AddWithValue("@p3",TextBox3.Text);
            komut2.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
            //KATEGORİ SAYISINI ARTTIRMA    
            SqlCommand komut4 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 Where Kategoriid=@p1", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut4.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}