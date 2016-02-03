using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BO
{    
    //////////////////////////Order/////////////////////// 
    public class OrderBO
    {
        string orderid;
        string custid;
        DateTime orderdate;
        decimal total;
        int status;
        public OrderBO()
        {
            orderid = string.Empty;
            custid = string.Empty;
            orderdate = DateTime.Now;
            total = 0;
        }
        public string OrderID
        {
            get {return orderid ;}
            set {orderid=value ;}
        }
        string CustID
        {
            get { return custid; }
            set { custid = value; }
        }
        DateTime OrderDate
        {
            get { return orderdate; }
            set { orderdate = value; }
        }
        decimal Total
        {
            get { return total; }
            set { total = value; }
        }
        int Status
        {
            get { return status; }
            set { status = value; }
        }
    }
    public class OrderCollection : System.Collections.CollectionBase
    {
        public void Add(OrderBO orderBO)
        {
            List.Add(orderBO);
        }
        public void Remove(int index)
        {
            List.RemoveAt(index);
        }
        public OrderBO Index(int index)
        {
            return (OrderBO)List[index];
        }
    }
    /////////////////////////////////////Order details//////////////////////////
    public class OrderDetailsBO
    {
        string orderid;
        string merchantid;
        decimal values;
        public OrderDetailsBO()
        {
            orderid = string.Empty;
            merchantid = string.Empty;
            values = 0;
        }
        public string OrderID
        {
            get { return orderid; }
            set { orderid = value; } 
        }
        public string MerchantID 
        { 
            get { return merchantid; }
            set { merchantid = value; } 
        }
        public decimal Value
        {
            get { return values; }
            set { values = value; }        
        }
        
    }
    public class OrderDetailsCollection : System.Collections.CollectionBase
    {
        public void Add(OrderDetailsBO orderdetailsBO)
        {
            List.Add(orderdetailsBO);
        }
        public void Remove(int index)
        {
            List.RemoveAt(index);
        }
        public OrderDetailsBO Index(int index)
        {
            return (OrderDetailsBO)List[index];
        }
    }
}
