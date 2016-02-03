using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BO
{
    class AdminBO
    {
        private string _adminID;
        private string _adPassword;
        private bool _super;
        private bool _select;
        private bool _insert;
        private bool _update;
        private bool _delete;
        private PageCollection _pages;
        public AdminBO()
        {
            _adminID = string.Empty;
            _adPassword = string.Empty;
            _super = false;
            _select = false;
            _insert = false;
            _update = false;
            _delete = false;
            _pages = null;
        }
        public string AdminID
        {
            get { return _adminID; }
            set { _adminID = value; }
        }
        public string AdminPassword
        {
            get { return _adPassword; }
            set { _adPassword = value; }
        }
        public bool Super
        {
            get { return _super; }
            set { _super = value; }
        }
        public bool Select
        {
            get { return _select; }
            set { _select = value; }
        }
        public bool Insert
        {
            get { return _insert; }
            set { _insert = value; }
        }
        public bool Update
        {
            get { return _update; }
            set { _update = value; }
        }
        public bool Delete
        {
            get { return _delete; }
            set { _delete = value; }
        }
        public PageCollection Pages
        {
            get { return _pages; }
            set { _pages = value; }
        }

    }
    /// <summary>
    /// ////////////////This is pages which Admin manage
    /// </summary>
    public class PageBO
    {
        private int _pageID;
        private string _pageName;
        public PageBO()
        {
            _pageID = 0;
            _pageName = string.Empty;
        }
    }
    public class PageCollection : System.Collections.CollectionBase
    {
        public void Add(PageBO pageBO)
        {
            List.Add(pageBO);
        }
        public void Remove(int index)
        {
            List.RemoveAt(index);
        }
        public PageBO Index(int index)
        {
            return (PageBO)List[index];
        }
    }
  
}
