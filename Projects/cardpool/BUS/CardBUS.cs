using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using BO;
namespace BUS
{
    public class CardBUS
    {
        CardDAO cardDAO = new CardDAO();
        /// <summary>
        /// //////////////////////////////CATEGORY//////////////////////////
        /// </summary>
        /// <returns></returns>
        public CategoryBO GetOneCategory(int catid)
        {
            try
            {
                return cardDAO.SelectOneCategory(catid);
            }
            catch
            {
                return null;
            }
        }
        public CategoryCollection GetCategoryList()
        {
            try
            {
                return cardDAO.SelectCategory();
            }
            catch
            {
                return null;
            }
        }

        public bool RemoveCategory(string catid)
        {
            try
            {
                cardDAO.DeleteCategory(catid);
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool AddCategory(string catname,string image,string description)
        {
            try
            {
                CategoryBO catBO = new CategoryBO();
                catBO.CatName = catname;
                catBO.Image = image;
                catBO.Description = description;
                bool hasimage = true;
                if (image == "") 
                    hasimage=false;
                cardDAO.InsertCategory(catBO,hasimage);
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool EditCategory(string catid, string catname,string image,string description)
        {
            try
            {
                CategoryBO catBO = new CategoryBO();
                catBO.CatID =Convert.ToInt32(catid);
                catBO.CatName = catname;
                catBO.Image = image;
                catBO.Description = description;
                bool hasimage = true;
                if (image == "")
                    hasimage = false;
                cardDAO.UpdateCategory(catBO,hasimage);
                return true;
            }
            catch
            {
                return false;
            }
        }
        ///////////////////////////////////////CARD///////////////////////////////////
        public CardBO GetOneCard(string cardid)
        {
            try
            {
                return cardDAO.SelectOneCard(cardid);
            }
            catch
            {
                return null;
            }

        }
        public CardCollection GetCardList(int catid)
        {
            try
            {
                return cardDAO.SelectCard(catid);
            }
            catch
            {
                return null;
            }
    
        }
        public CardCollection RandomCardList(CardCollection cardcoll, int quantity)
        {
            int max = cardcoll.Count;
            try
            {
                CardCollection rescoll= new CardCollection(); 
                while(cardcoll.Count>0)
                {
                    Random rd = new Random();
                    int index = rd.Next(0,max);
                    if(cardcoll.Index(index).Image!="~/images/CardImages/no_images.jpg")
                        rescoll.Add(cardcoll.Index(index));
                    cardcoll.Remove(index);
                    max--;
                    if(rescoll.Count==quantity)break;
                }
                return rescoll;               
            }
            catch
            {
                return null;
            }
        }
        public bool AddCard(string adid,string cardname, int categoryid, string description, string image)
        {
            try
            {
                CardBO cardBO = new CardBO();                
                cardBO.CardName = cardname;
                cardBO.CatID = categoryid;
                cardBO.Description = description;
                cardBO.Image = image;
                bool hasimage = true;
                if (image == "")
                    hasimage = false;
                cardDAO.InsertCard(adid,cardBO, hasimage);
                return true;
           }
            catch
            {
               return false;
            }
        }
        public bool EditCard(string cardid,string cardname,int categoryid,string description,string image)
        {
           try
           {
                CardBO cardBO= new CardBO();
                cardBO.CardID = cardid;
                cardBO.CardName = cardname;
                cardBO.CatID = categoryid;
                cardBO.Description = description;
                cardBO.Image = image;
                bool hasimage = true;
                if (image == "")
                    hasimage = false;
                cardDAO.UpdateCard(cardBO,hasimage);
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool RemoveCard(string cardid)
        {
            try
            {
                cardDAO.DeleteCard(cardid);                
                return true;
            }
            catch
            {
                return false;
            }
        }
               
       //////////////////for buy-gift-card.aspx/////////////////////////
              
        public CardCollection GetDisCountMerchant()
        {
            try
            {
                return cardDAO.SelectDisCountMerchant();
            }
            catch
            {
                return null;
            }
        }
        public CardCollection GetOutOfStockMerchant()
        {
            try
            {
                return cardDAO.SelectOutOfStockMerchant();
            }
            catch
            {
                return null;
            }
        }
        public CardCollection GetRelatedGiftCard(string cardid)
        {
            try
            {
                return cardDAO.SelectRelatedCard(cardid);
            }
            catch 
            {
                return null;
            }
        }
        /////////////////////for buy-cards.aspx///////////////////////
        public CardCollection GetDisCountMerchant(int catid)
        {
            try
            {
                return cardDAO.SelectDisCountMerchant(catid);
            }
            catch
            {
                return null;
            }
        }
        public CardCollection GetOutOfStockMerchant(int catid)
        {
            try
            {
                return cardDAO.SelectOutOfStockMerchant(catid);
            }
            catch
            {
                return null;
            }
        }
        //////////////////////////////MERCHANT//////////////////////////
        public CardCollection GetMerchantList(string cardid)
        {
            try
            {
                return cardDAO.SelectMerchant(cardid);
            }
            catch
            {
                return null;
            }

        }
        public CardCollection GetMerchantList(List<string> merIDlist)
        {
            try
            {
                return cardDAO.SelectMerchant(merIDlist);
            }
            catch
            {
                return null;
            }

        } 

        public MerchantCollection GetOnlyMerchantList(string cardid)
        {
            try
            {
                return cardDAO.SelectOnlyMerchant(cardid);
            }
            catch
            {
                return null;
            }

        }
       
        public bool AddMerchant(string cardid,decimal value,decimal pay,decimal save,string notes)
        {
            try
            {
                MerchantBO merBO = new MerchantBO();               
                merBO.CardID = cardid;
                merBO.Value = value;
                merBO.Pay = pay;
                merBO.Save = save;
                merBO.Notes = notes;
                cardDAO.InsertMerchant(merBO);
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool EditMerchant(string merchantid, decimal value, decimal pay, decimal save, string notes)
        {
            try
            {
                MerchantBO merchantBO = new MerchantBO();
                merchantBO.MerchantID = merchantid;
                merchantBO.Value = value;
                merchantBO.Pay = pay;
                merchantBO.Save = save;
                merchantBO.Notes = notes;
                cardDAO.UpdateMerchant(merchantBO);
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool RemoveMerchant(string cardid)
        {
            try
            {
                cardDAO.DeleteMerchat(cardid);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
         
   