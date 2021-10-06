using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi
{
    public partial class Yemekler_Admin : System.Web.UI.Page
    {
        sqlsınıf bgl = new sqlsınıf();
        string islem = "";
        string id = "";
        string kategoriid = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            Panel3.Visible = false;
            Panel5.Visible = false;
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemekidd"];
                islem = Request.QueryString["islem"];


                //KATEGORİ LİSTESİ
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            // YEMEK LİSTESİ
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();


            //YEMEKSİLME
            if (islem == "sil")
            {
                //kategori id okuma
                SqlCommand komut4 = new SqlCommand("select* from Tbl_Yemekler where Yemekidd=@p1", bgl.baglanti());
                komut4.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut4.ExecuteReader();
                while (oku.Read())
                { kategoriid = oku[7].ToString(); }//yemekler tablosunun kategori id kolonu
                bgl.baglanti().Close();


                SqlCommand komut3 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet-1 Where Kategoriid=@p2", bgl.baglanti());
                komut3.Parameters.AddWithValue("@p2",kategoriid);
                komut3.ExecuteNonQuery();
                bgl.baglanti().Close();

                //silme
                SqlCommand komut5 = new SqlCommand("delete from Tbl_Yemekler where Yemekidd=@p3", bgl.baglanti());
                komut5.Parameters.AddWithValue("@p3", id);
                komut5.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Silindi.");



            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            //YEMEK EKLEME
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yemek Eklendi.");

            //KATEGORİ SAYISINI ARTTIRMA    
            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 Where Kategoriid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}