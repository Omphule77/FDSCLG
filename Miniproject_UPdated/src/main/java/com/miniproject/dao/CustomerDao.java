package com.miniproject.dao;

import java.util.List;

import com.miniproject.entity.AddProduct;
import com.miniproject.entity.Admin;
import com.miniproject.entity.Customer;
import com.miniproject.entity.DeliveryBoy;
import com.miniproject.entity.Feedback;
import com.miniproject.entity.Orders;
import com.miniproject.entity.ReservedTable;
import com.miniproject.entity.Restro;

public interface CustomerDao {
    public int insert(Customer ctm);
    public int insertFeedback(Feedback fb);
    public int insert(Admin adm);
    public int insert(Orders order);
    public int insert(DeliveryBoy dboy);
    public int insert(Restro restro);
    public int insert(AddProduct ap,String path1);
    public int insert(ReservedTable rt,String path1);
    public int insertFile(String email,String path);
    public boolean validateUser(String email, String Password);
    public boolean validateFq(String emailg,String fq,String password1);
    public boolean validateAdmin(String email, String Password);
    public boolean validateRestro(String email, String ophone);
    public boolean validatedb(String email, String phone1);
    public Customer show(String email);
//    public Customer showfq(String fq);
    public AddProduct showbuy(int id);
    public List<AddProduct> show(AddProduct ap);
    public List<AddProduct> showburger(AddProduct ap);
    public List<AddProduct> showicecreme(AddProduct ap);
    public List<AddProduct> showcake(AddProduct ap);
    public List<AddProduct> showfries(AddProduct ap);
    public List<AddProduct> showbiryani(AddProduct ap);
    public List<AddProduct> showchicken(AddProduct ap);
    public List<AddProduct> showpizza(AddProduct ap);
    public List<AddProduct> showsandwich(AddProduct ap);
    public Admin showAdmin(String email);
    public Restro showRestro(String email);
    public DeliveryBoy showdb(String email);
    public int updateProduct(Customer ctm);
    public List<Orders> getOrders();
    public List<Orders> getCompleteOrders();
    public List<Orders> getNewOrders();
    public List<Orders> getCart(String phone1);
    public Orders getCart(int id);
    public List<Orders> getRunningOrders();
    public List<Orders> getCompletedOrders();
    public int updateOrder(int id);
    public int updateDeliveryOrder(int id);
    public int completeOrder(int id);
}
