using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BO;
namespace DAO
{
    public class CardDAO
    {
        /// <summary>
        /// /////////////CATEGORY
        /// </summary>
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        public CategoryBO SelectOneCategory(int catid)
        {
            CategoryBO catBO = new CategoryBO();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Category WHERE CategoryID=@catid", cnn);
            cmd.Parameters.AddWithValue("@catid",catid);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {               
                catBO.CatID = Convert.ToInt32(dr["CategoryID"].ToString());
                catBO.CatName = dr["CatName"].ToString();
                catBO.CardCount = Convert.ToInt32(dr["CardCount"].ToString());
                catBO.Image = dr["Image"].ToString();
                catBO.Description = dr["Description"].ToString();               
                break;
            }
            cnn.Close();
            return catBO;
        }
        public CategoryCollection SelectCategory()
        {
            CategoryCollection catColl= new CategoryCollection();
            SqlCommand cmd= new SqlCommand("SELECT * FROM Category Order BY CatName",cnn);
            cnn.Open();
            SqlDataReader dr= cmd.ExecuteReader();         
            while(dr.Read())
            {
                CategoryBO catBO= new CategoryBO();
                catBO.CatID=Convert.ToInt32(dr["CategoryID"].ToString());
                catBO.CatName=dr["CatName"].ToString();
                catBO.CardCount = Convert.ToInt32(dr["CardCount"].ToString());
                catBO.Image = dr["Image"].ToString();
                catBO.Description = dr["Description"].ToString();   
                catColl.Add(catBO);
            }
            cnn.Close();
            return catColl;
        }
        public void InsertCategory(CategoryBO catBO,bool hasimage)
        {
            SqlCommand cmd= null;
            if (hasimage == true)
            {
                cmd = new SqlCommand("INSERT INTO Category(catname,image,description) VALUES(@catname,@image,@description)", cnn);
                cmd.Parameters.AddWithValue("@catname", catBO.CatName);
                cmd.Parameters.AddWithValue("@image", catBO.Image);
                cmd.Parameters.AddWithValue("@description", catBO.Description);
            }
            else
            {
                cmd = new SqlCommand("INSERT INTO Category(catname,description) VALUES(@catname,@description)", cnn);
                cmd.Parameters.AddWithValue("@catname", catBO.CatName);
                cmd.Parameters.AddWithValue("@description", catBO.Description);
            }

            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
        public void UpdateCategory(CategoryBO catBO,bool hasimage)
        {    SqlCommand cmd = null;
            if (hasimage == true)
            {
                cmd = new SqlCommand("UPDATE Category SET CatName=@catname,Image=@image,Description=@description WHERE CategoryID=@catID", cnn);
                cmd.Parameters.AddWithValue("@catID",catBO.CatID );
                cmd.Parameters.AddWithValue("@catname", catBO.CatName);
                cmd.Parameters.AddWithValue("@image", catBO.Image);
                cmd.Parameters.AddWithValue("@description", catBO.Description);              
            }
            else
            {
                cmd = new SqlCommand("UPDATE Category SET CatName=@catname,Description=@description WHERE CategoryID=@catID", cnn);
                cmd.Parameters.AddWithValue("@catID", catBO.CatID);
                cmd.Parameters.AddWithValue("@catname", catBO.CatName);
                cmd.Parameters.AddWithValue("@description", catBO.Description);    
            }
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
        public void DeleteCategory(string catid)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Category WHERE CategoryID=" + catid, cnn);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }

        //////////////////////////CARD/////////////////////////
        //////EXECUTE OnUpdateCard procedure//////////      
        public void UpCardCount()
        {
            SqlCommand cmd = new SqlCommand("OnUpdateCard", cnn);
            cmd.CommandType = CommandType.StoredProcedure;      
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
        //////SELECT//////////      
        public CardBO SelectOneCard(string cardid)//Get ONE Card which has ID=cardID
        {
            CardBO cardBO = new CardBO();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Card where cardid=@cardid", cnn);
            cmd.Parameters.AddWithValue("@cardid", cardid);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {                
                cardBO.CardID = dr["CardID"].ToString();
                cardBO.CatID = Convert.ToInt32(dr["CatID"].ToString());
                cardBO.CardName = dr["CardName"].ToString();
                cardBO.Description = dr["Description"].ToString();
                cardBO.Image = dr["Image"].ToString();
              
            }
            cnn.Close();
            return cardBO;
        }
        public CardCollection SelectCard(int catid)//Get every cards in a Category
        {
            CardCollection cardColl = new CardCollection();
            SqlCommand cmd = null;
            if (catid != -1)
            {
                cmd = new SqlCommand("SELECT * FROM Card where catid=@cateid Order By CardName", cnn);
                cmd.Parameters.AddWithValue("@cateid", catid);
            }
            else
                cmd = new SqlCommand("SELECT * FROM Card Order By CardName", cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                CardBO cardBO = new CardBO();        
                cardBO.CardID = dr["CardID"].ToString();
                cardBO.CatID = Convert.ToInt32(dr["CatID"].ToString());
                cardBO.CardName = dr["CardName"].ToString();
                cardBO.Description = dr["Description"].ToString();           
                cardBO.Image = dr["Image"].ToString();
                cardBO.MerchantCount=Convert.ToInt32(dr["MerchantCount"].ToString());
                cardColl.Add(cardBO);
            }
            cnn.Close();
            return cardColl;
        }
        public CardCollection SelectRelatedCard(string cardid)
        {
            CardCollection CardColl = new CardCollection();
            string sql = "SELECT Card.CardID,CardName,Image, MAX(Merchant.[Save]) AS Save1,MerchantCount ";
            sql += "FROM Card LEFT OUTER JOIN  Merchant ON Card.CardID = Merchant.CardID ";
            sql += "WHERE Card.CardID<>@cardid AND catid=(SELECT catid from Card where cardid=@cardID) ";
            sql += "GROUP BY Card.CardID,Image,CardName,MerchantCount Order By CardName";
            SqlCommand cmd = new SqlCommand(sql, cnn);
            cmd.Parameters.AddWithValue("@cardid", cardid);            
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                CardBO cardBO = new CardBO();
                MerchantCollection Mercoll = new MerchantCollection();
                MerchantBO merBO = new MerchantBO();
                cardBO.CardID = dr["CardID"].ToString();
                cardBO.CardName = dr["CardName"].ToString();
                cardBO.Image = dr["Image"].ToString();
                cardBO.MerchantCount = Convert.ToInt32(dr["merchantcount"].ToString());
                if(dr["Save1"].ToString()!="")
                    merBO.Save = Convert.ToDecimal(dr["Save1"].ToString());
                Mercoll.Add(merBO);
                cardBO.Details = Mercoll;
                CardColl.Add(cardBO);
            }
            cnn.Close();
            return CardColl;       
        }
        //////INSERT//////////      
        public void InsertCard(string adid,CardBO cardBO,bool hasimage)
        {
            SqlCommand cmd;
            if (hasimage == true)
            {
                cmd = new SqlCommand("INSERT INTO Card(CardID,AdID,CatId,CardName,Description,Image) VALUES(dbo.NewCardID(),@adid,@catid,@cardname,@description,@image)", cnn);
                cmd.Parameters.AddWithValue("@adid",adid );
                cmd.Parameters.AddWithValue("@catid", cardBO.CatID);
                cmd.Parameters.AddWithValue("@cardname", cardBO.CardName);
                cmd.Parameters.AddWithValue("@description", cardBO.Description);
                cmd.Parameters.AddWithValue("@image", cardBO.Image);
            }
            else
            {
                cmd = new SqlCommand("INSERT INTO Card(CardID,AdID,CatId,CardName,Description) VALUES(dbo.NewCardID(),@adid,@catid,@cardname,@description)", cnn);
                cmd.Parameters.AddWithValue("@adid", adid);
                cmd.Parameters.AddWithValue("@catid", cardBO.CatID);
                cmd.Parameters.AddWithValue("@cardname", cardBO.CardName);
                cmd.Parameters.AddWithValue("@description", cardBO.Description);               
            }
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            UpMerchantCount();
            UpCardCount();
        }
        //////UPDATE//////////  
        public void UpdateCard(CardBO cardBO,bool hasimage)
        {
            SqlCommand cmd = null;
            if (hasimage == true)
            {
                cmd = new SqlCommand("UPDATE Card SET CatId=@Catid,CardName=@CardName,Description=@Description,Image=@Image WHERE CardID=@CardID", cnn);
                cmd.Parameters.AddWithValue("@Catid", cardBO.CatID);
                cmd.Parameters.AddWithValue("@CardName", cardBO.CardName);
                cmd.Parameters.AddWithValue("@Description", cardBO.Description);
                cmd.Parameters.AddWithValue("@Image", cardBO.Image);
                cmd.Parameters.AddWithValue("@CardID", cardBO.CardID);
            }
            else
            {
                cmd = new SqlCommand("UPDATE Card SET CatId=@Catid,CardName=@CardName,Description=@Description WHERE CardID=@CardID", cnn);
                cmd.Parameters.AddWithValue("@Catid", cardBO.CatID);
                cmd.Parameters.AddWithValue("@CardName", cardBO.CardName);
                cmd.Parameters.AddWithValue("@Description", cardBO.Description);            
                cmd.Parameters.AddWithValue("@CardID", cardBO.CardID);
            }
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            UpMerchantCount();
            UpCardCount();
        }
        //////DELETE//////////  
        public void DeleteCard(string cardid)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Card WHERE CardID=" + cardid, cnn);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            UpMerchantCount();
            UpCardCount();            
        }
        //////////////////////////MERCHANT DETAIL/////////////////////////////////

        //////EXECUTE OnUpdateMerChant procedure//////////      
        public void UpMerchantCount()
        {
            SqlCommand cmd = new SqlCommand("OnUpdMerchant", cnn);
            cmd.CommandType = CommandType.StoredProcedure;  
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
        /// //////////////////////////////for buy-gift-cards.aspx/////////////////       
        public CardCollection SelectDisCountMerchant()
        {
            CardCollection CardColl = new CardCollection();
            SqlCommand cmd = new SqlCommand("SELECT Card.CardID,CardName,Image, MAX(Merchant.[Save]) AS Save1,MerchantCount FROM Card INNER JOIN  Merchant ON Card.CardID = Merchant.CardID GROUP BY Card.CardID,Image,CardName,MerchantCount HAVING MerchantCount>0 Order By CardName", cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                CardBO cardBO = new CardBO();
                MerchantCollection Mercoll = new MerchantCollection();
                MerchantBO merBO = new MerchantBO();
                cardBO.CardID=dr["CardID"].ToString();
                cardBO.CardName = dr["CardName"].ToString();
                cardBO.Image = dr["Image"].ToString();
                cardBO.MerchantCount =Convert.ToInt32(dr["merchantcount"].ToString());
                merBO.Save = Convert.ToDecimal(dr["Save1"].ToString());
                Mercoll.Add(merBO);
                cardBO.Details = Mercoll;
                CardColl.Add(cardBO);
            }
            cnn.Close();
            return CardColl;
        }
        public CardCollection SelectOutOfStockMerchant()
        {
            CardCollection CardColl = new CardCollection();
            SqlCommand cmd = new SqlCommand("SELECT CardID,CardName AdID, CatID, CardName, Description, Image FROM Card  WHERE (CardID NOT IN (SELECT CardID FROM Merchant)) Order By CardName", cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                CardBO cardBO = new CardBO();
                cardBO.CardID = dr["CardID"].ToString();
                cardBO.CardName = dr["CardName"].ToString();
                cardBO.Image = dr["Image"].ToString();    
                CardColl.Add(cardBO);
            }
            cnn.Close();
            return CardColl;
        }
        /// <summary>
        /// //////////////////////for buy-cards.aspx////////////////////////////////////
        public CardCollection SelectDisCountMerchant(int catid)
        {
            CardCollection CardColl = new CardCollection();
            SqlCommand cmd = new SqlCommand("SELECT Card.CardID,CardName,Image, MAX(Merchant.[Save]) AS Save1,MerchantCount FROM Card INNER JOIN  Merchant ON Card.CardID = Merchant.CardID WHERE card.catid=@catid GROUP BY Card.CardID,Image,CardName,MerchantCount HAVING MerchantCount>0 Order By CardName", cnn);
            cmd.Parameters.AddWithValue("@catid", catid);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                CardBO cardBO = new CardBO();
                MerchantCollection Mercoll = new MerchantCollection();
                MerchantBO merBO = new MerchantBO();
                cardBO.CardID = dr["CardID"].ToString();
                cardBO.CardName = dr["CardName"].ToString();
                cardBO.Image = dr["Image"].ToString();
                cardBO.MerchantCount = Convert.ToInt32(dr["merchantcount"].ToString());
                merBO.Save = Convert.ToDecimal(dr["Save1"].ToString());
                Mercoll.Add(merBO);
                cardBO.Details = Mercoll;
                CardColl.Add(cardBO);
            }
            cnn.Close();
            return CardColl;

        }
        public CardCollection SelectOutOfStockMerchant(int catid)
        {
            CardCollection CardColl = new CardCollection();
            SqlCommand cmd = new SqlCommand("SELECT CardID,CardName AdID, CatID, CardName, Description, Image FROM Card  WHERE (CardID NOT IN (SELECT CardID FROM Merchant)) AND card.catid=@catid Order By CardName", cnn);
            cmd.Parameters.AddWithValue("@catid", catid);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                CardBO cardBO = new CardBO();
                cardBO.CardID = dr["CardID"].ToString();
                cardBO.CardName = dr["CardName"].ToString();
                cardBO.Image = dr["Image"].ToString();
                CardColl.Add(cardBO);
            }
            cnn.Close();
            return CardColl;
        }
        ///////////////////////////////SELECT//////////////////////////////////////
        public CardCollection SelectMerchant(string cardID)
        {
            SqlCommand cmd = new SqlCommand("SELECT MerchantID,Card.CardID,CardName,Image,Value,[Save],Pay,Notes FROM Merchant INNER JOIN Card ON Merchant.CardID=Card.CardID WHERE Card.cardid=@cardid Order By CardName", cnn);
            cmd.Parameters.AddWithValue("@cardid", cardID);
            CardCollection cardColl = new CardCollection();
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {  
                CardBO cardBO = new CardBO();
                cardBO.Image = dr["Image"].ToString();
                cardBO.CardName = dr["CardName"].ToString();
                MerchantCollection MerchantColl = new MerchantCollection();
                MerchantBO merBO = new MerchantBO();
                merBO.MerchantID = dr["MerchantID"].ToString();
                merBO.Value = Convert.ToDecimal(dr["Value"].ToString());
                merBO.Pay = Convert.ToDecimal(dr["Pay"].ToString());
                merBO.Save = Convert.ToDecimal(dr["Save"].ToString());
                merBO.Notes = dr["Notes"].ToString();
                //Add to merchantColl
                MerchantColl.Add(merBO);
                //Assing Card.Detail = MerchantColl
                cardBO.Details = MerchantColl;
                //Add Card to cardColl
                cardColl.Add(cardBO);
            }
            cnn.Close();
            return cardColl;
        }
        public CardCollection SelectMerchant(List<string> MerIDList)
        {
            string sql = "SELECT MerchantID,Card.CardID,CardName,Image,Value,[Save],Pay,Notes ";
            sql += "FROM Merchant INNER JOIN Card ON Merchant.CardID=Card.CardID ";
            sql +="WHERE MerchantID= '"+MerIDList[0]+"'";
            for(int i=1;i<MerIDList.Count;i++)
            {
                sql += "OR ";
                sql+= "MerchantID='"+MerIDList[i]+"' ";
           
            }
            SqlCommand cmd = new SqlCommand(sql, cnn);        
            CardCollection cardColl = new CardCollection();
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                CardBO cardBO = new CardBO();
                cardBO.Image = dr["Image"].ToString();
                cardBO.CardName = dr["CardName"].ToString();
                MerchantCollection MerchantColl = new MerchantCollection();
                MerchantBO merBO = new MerchantBO();
                merBO.MerchantID = dr["MerchantID"].ToString();
                merBO.Value = Convert.ToDecimal(dr["Value"].ToString());
                merBO.Pay = Convert.ToDecimal(dr["Pay"].ToString());
                merBO.Save = Convert.ToDecimal(dr["Save"].ToString());
                merBO.Notes = dr["Notes"].ToString();
                //Add to merchantColl
                MerchantColl.Add(merBO);
                //Assing Card.Detail = MerchantColl
                cardBO.Details = MerchantColl;
                //Add Card to cardColl
                cardColl.Add(cardBO);
            }
            cnn.Close();
            return cardColl;
        }
        public MerchantCollection SelectOnlyMerchant(string cardID)
        {
            MerchantCollection MerchantColl = new MerchantCollection();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Merchant WHERE cardid=@cardid", cnn);
            cmd.Parameters.AddWithValue("@cardid", cardID);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {    
                MerchantBO merBO = new MerchantBO();
                merBO.MerchantID = dr["MerchantID"].ToString();
                merBO.Value = Convert.ToDecimal(dr["Value"].ToString());
                merBO.Pay = Convert.ToDecimal(dr["Pay"].ToString());
                merBO.Save = Convert.ToDecimal(dr["Save"].ToString());
                merBO.Notes = dr["Notes"].ToString();
                //Add to merchantColl
                MerchantColl.Add(merBO);         
            }
            cnn.Close();
            return MerchantColl;
        }
        //////INSERT//////////
        public void InsertMerchant(MerchantBO merBO)
        {
            SqlCommand cmd;
            cmd = new SqlCommand("INSERT INTO Merchant VALUES(dbo.NewMerChantID(),@CardID,@value,@pay,@save,@notes)",cnn);
            cmd.Parameters.AddWithValue("@CardId",merBO.CardID);
            cmd.Parameters.AddWithValue("@value",merBO.Value);
            cmd.Parameters.AddWithValue("@pay",merBO.Pay); 
            cmd.Parameters.AddWithValue("@save",merBO.Save);
            cmd.Parameters.AddWithValue("@notes",merBO.Notes);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            UpMerchantCount();
            UpCardCount();
    
        }
        //////UPDATE//////////
        public void UpdateMerchant(MerchantBO merBO)
        {
         
            SqlCommand cmd = null;
            cmd = new SqlCommand("UPDATE Merchant SET Value=@value,Pay=@pay,[Save]=@save,Notes=@notes WHERE MerchantID=@MerchantID", cnn);
            cmd.Parameters.AddWithValue("@value", merBO.Value);
            cmd.Parameters.AddWithValue("@pay", merBO.Pay);
            cmd.Parameters.AddWithValue("@save", merBO.Save);
            cmd.Parameters.AddWithValue("@notes", merBO.Notes);
            cmd.Parameters.AddWithValue("@MerchantID", merBO.MerchantID);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            UpMerchantCount();
            UpCardCount();          
        }
        
        //////DELETE//////////
        public void DeleteMerchat(string merid)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Merchant WHERE MerchantID=" + merid, cnn);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            UpMerchantCount();
            UpCardCount();
            
        }
    }
}
