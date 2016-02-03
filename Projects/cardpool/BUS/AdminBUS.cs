using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
namespace BUS
{
    public class AdminBUS
    {
        public AdminBUS()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        AdminDAO adDAO = new AdminDAO();
        public bool AdminLogin(string id, string password)
        {
            return adDAO.SelectAdmin(id, password);
          
        }
        public bool AdminChangePassword(string id, string password, string newpassword)
        {
            return adDAO.Update_Admin_Pass(id, password, newpassword);
        }
        public bool AddUser(string id, string password)
        {
            try
            {
                bool res= adDAO.InsertUser(id, password);
                if (res == true)
                    return true;
                else
                    return false;
            }   
            catch
            {
                return false;
            }
        }
        public bool IsSupper(string id)
        {
            try
            {
                bool res=adDAO.IsSupper(id);
                if (res == true) return true;
                else return false;
            }
            catch
            {
                return false;
            }
        }
        public bool RemoveUser(string id)
        {
            try 
            {
                adDAO.DeleteUser(id);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
