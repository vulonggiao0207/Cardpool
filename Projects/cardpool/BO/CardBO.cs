using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
namespace BO
{
    /// <summary>
    /// ////////////////////////////MERCHANT CLASS/////////////////////////////
    /// </summary>
    public class MerchantBO
    {
        string _merID;
        string _cardID;
        decimal _value;
        decimal _pay;
        decimal _save;
        string _notes;
 
        public MerchantBO()
        {
            _merID = string.Empty;
            _cardID = string.Empty;
            _value = 0;
            _pay = 0;
            _save = 0;
            _notes = string.Empty;
         
        }
        public string MerchantID
        {
            get { return _merID; }
            set { _merID = value; }
        }
        public string CardID
        {
            get { return _cardID; }
            set { _cardID = value; }
        }
        public decimal Value
        {
            get { return _value; }
            set { _value = value; }
        }
        public decimal Pay
        {
            get { return _pay; }
            set { _pay = value; }
        }
        public decimal Save
        {
            get { return _save; }
            set { _save = value; }
        }
        public string Notes
        {
            get { return _notes; }
            set { _notes = value; }
        }
    

    }
    public class MerchantCollection : System.Collections.CollectionBase
    {
        public void Add(MerchantBO merchantBO)
        {
            List.Add(merchantBO);
        }
        public void Remove(int index)
        {
            List.RemoveAt(index);
        }
        public MerchantBO Index(int index)
        {
            return (MerchantBO)List[index];
        }
    }
    /// <summary>
    /// /////////////////////CARD CLASS////////////////////////
    /// </summary>
    public class CardBO
    {
        string _cardID;
        int _catID;
        string _cardName;
        string _desription;
        string _image;
        int _merchantcount;
        MerchantCollection _details;
        public CardBO()
        {
            _cardID = string.Empty;
            _cardName = string.Empty;
            _desription = string.Empty;
            _image = null;
            _details = null;
            _merchantcount = 0;
        }
        public string CardID
        {
            get { return _cardID; }
            set { _cardID = value; }
        }
        public int CatID
        {
            get { return _catID; }
            set { _catID = value; }
        }
        public string CardName
        {
            get { return _cardName; }
            set { _cardName = value; }
        }
        public string Description
        {
            get { return _desription; }
            set { _desription = value; }
        }
        public string Image
        {
            get { return _image; }
            set { _image = value; }
        }
        public int MerchantCount
        {
            get { return _merchantcount; }
            set { _merchantcount = value; }
        }
        public MerchantCollection Details
        {
            get { return _details; }
            set { _details = value; }
        }
      
    }
    public class CardCollection : System.Collections.CollectionBase
    {
        public void Add(CardBO catBO)
        {
            List.Add(catBO);
        }
        public void Remove(int index)
        {
            List.RemoveAt(index);
        }
        public CardBO Index(int index)
        {
            return (CardBO)List[index];
        }
    }   
 
    /// <summary>
    /// ////////////////////////////CATEGORY CLASS/////////////////////////////
    /// </summary>
    public class CategoryBO
    {
        int _catID;
        string _catName;
        string _image;
        string _description;
        int _cardcount;
        public CategoryBO()
        {
            _catID=0;
            _catName=string.Empty;
            _image = string.Empty;
            _description = string.Empty;
            _cardcount = 0;
        }
        public int CatID
        {
            get {return _catID ;}
            set {_catID=value;}
        }
        public string CatName
        {
            get {return _catName ;}
            set {_catName=value ;}
        }
        public string Image
        {
            get { return _image; }
            set { _image = value; }
        }
        public string Description
        {
            get { return _description; }
            set { _description=value;}
        }
        public int CardCount
        {
            get { return _cardcount; }
            set { _cardcount = value; }
        }
    }

    public class CategoryCollection : System.Collections.CollectionBase
    {
        public void Add(CategoryBO catBO)
        {
            List.Add(catBO);
        }
        public void Remove(int index)
        {
            List.RemoveAt(index);
        }
        public CategoryBO Index(int index)
        {
            return (CategoryBO)List[index];
        }
    }
}
