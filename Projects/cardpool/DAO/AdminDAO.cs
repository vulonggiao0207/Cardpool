using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace DAO
{
    public class AdminDAO
    {
        public AdminDAO()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        public bool SelectAdmin(string id, string password)
        {
            SqlCommand cmd = new SqlCommand("SELECT AdID,AdPassword FROM Admin", cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            bool flag = true;
            while (dr.Read())
            {
                string idcheck = dr["AdID"].ToString().Trim();
                string passwordcheck = dr["AdPassword"].ToString().Trim();
                if (id == idcheck && password == passwordcheck)
                {
                    flag = false;
                    break;
                }
            }
            cnn.Close();
            return flag;
        }
        public bool ExistUser(string id)
        {
            SqlCommand cmd = new SqlCommand("SELECT AdID FROM Admin WHERE AdID='"+id+"'", cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            bool flag = false;
            while (dr.Read())
            {
                string idcheck = dr["AdID"].ToString().Trim();
                if (id == idcheck)
                {
                    flag = true;
                    break;
                }
            }
            cnn.Close();
            return flag;
        }
        public bool Update_Admin_Pass(string id, string password, string newpassword)
        {
            if (SelectAdmin(id, password) == false)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Admin Set AdPassword='" + newpassword + "' where AdID='"+id+"' and AdPassword='"+password+"'",cnn);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
                return true;
            }
            return false;
        }
        public bool InsertUser(string id, string password)
        {
            if (ExistUser(id) == false)
            {
                SqlCommand cmd = new SqlCommand("Insert INTO ADMIN(ADID,ADPassword,Super) VALUES(@id,@password,'False')", cnn);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@password", password);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
                return true;
            }
            else
                return false;
        }
        public bool IsSupper(string id)
        {
            SqlCommand cmd = new SqlCommand("SELECT AdID,Super FROM Admin WHERE AdID='" + id + "'", cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            bool flag = false;
            while (dr.Read())
            {
                bool super =(bool) dr["Super"];
                if (super==true)
                {
                    flag = true;
                    break;
                }
            }
            cnn.Close();
            return flag;
        }
        public void DeleteUser(string id)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Admin WHERE AdID=@adid",cnn);
            cmd.Parameters.AddWithValue("@adid", id);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();          
        }
    }

}
