package com.miniproject.dao;

import java.sql.Date;
import java.time.Instant;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.google.protobuf.Timestamp;
import com.miniproject.entity.AddProduct;
import com.miniproject.entity.Admin;
import com.miniproject.entity.Customer;
import com.miniproject.entity.DeliveryBoy;
import com.miniproject.entity.Feedback;
import com.miniproject.entity.Orders;
import com.miniproject.entity.ReservedTable;
import com.miniproject.entity.Restro;

public class CustomerDaoImpl implements CustomerDao {
   
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public int insert(Customer ctm) {
		// TODO Auto-generated method stub
		String q="insert into register(name,email,phone1,phone2,address,password,path,fq) values(?,?,?,?,?,?,0,?)";
		int r = this.jdbcTemplate.update(q,ctm.getName(),ctm.getEmail(),ctm.getPhone1(),ctm.getPhone2(),ctm.getAddress(),ctm.getPassword(),ctm.getFq());
		return r;
	}
	@Override
	public boolean validateUser(String email, String Password) {
		// TODO Auto-generated method stub
		try {
		System.out.println("Under try");
		String q="select count(*) from register where email=? and password=?";
		
		Integer count = this.jdbcTemplate.queryForObject(q,Integer.class, email,Password);
		if(count==1) {
			System.out.println("User Found");
			return true;
		}
		else {
			System.out.println("User not Found");
		
		return false;
		}
		} catch (Exception e) {
	        System.out.println("Error: An unexpected error occurred: ");
	        return false;
	    }
	}
	
	@Override
	public boolean validateFq(String email,String fq,String password1) {
		System.out.println(email);
		System.out.println(password1);
		// TODO Auto-generated method stub
				try {
					System.out.println("Under try");
				String q="update register set password=? where email=? and fq=?";
				
				Integer count = this.jdbcTemplate.update(q,password1,email,fq);
				if(count==1) {
					System.out.println("User Found");
					return true;
				}
				else {
					System.out.println("User not Found");
				
				return false;
				}
				} catch (Exception e) {
			        System.out.println(e);
			        return false;
			    }
	}
	

	@Override
	public Customer show(String email) {
		String  query="select * from register where email=?";
		System.out.println("3");
		RowMapper<Customer> rowMapper = new RowMapperImpl();
		System.out.println("4");
		Customer ctm = this.jdbcTemplate.queryForObject(query, rowMapper,email);
		System.out.println("5");
		return ctm;
	}
	
//	@Override
//	public Customer showfq(String fq) {
//		String  query="select * from register where fq=?";
//		System.out.println("3");
//		RowMapper<Customer> rowMapper = new RowMapperImpl();
//		System.out.println("4");
//		Customer ctm = this.jdbcTemplate.queryForObject(query, rowMapper,fq);
//		System.out.println("5");
//		return ctm;
//	}
	
	@Override
	public int updateProduct(Customer ctm) {
		//updating data
				System.out.println("1");
				String query="update register set name=?  , phone2=?,address=?,password=? where email=? ";
				System.out.println("2");
				int r = this.jdbcTemplate.update(query,ctm.getName(),ctm.getPhone2(),ctm.getAddress(),ctm.getPassword(),ctm.getEmail());
				System.out.println("3");
				return r;
	}
	
	@Override
	public int insertFile(String email, String path) {
	    System.out.println("File Path= " + path);
	    String q = "update register set path=? where email=?";
	    System.out.println("here i am");
	    int r = this.jdbcTemplate.update(q, path, email);
	    System.out.println(r);
	    System.out.println("Path inserted into the database");
	    return r;
	}

	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public CustomerDaoImpl(JdbcTemplate jdbcTemplate) {
		super();
		this.jdbcTemplate = jdbcTemplate;
	}

	public CustomerDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "CustomerDaoImpl [jdbcTemplate=" + jdbcTemplate + "]";
	}
	
	//admin registeration
	@Override
	public int insert(Admin adm) {
		String q="insert into admin(name,email,phone1,address,password) values(?,?,?,?,?)";
		int r = this.jdbcTemplate.update(q,adm.getName(),adm.getEmail(),adm.getPhone1(),adm.getAddress(),adm.getPassword());
		return r;
	}
	@Override
	public Admin showAdmin(String email) {
		String  query="select * from admin where email=?";
		System.out.println("3");
		RowMapper<Admin> rowMapper = new RowMapperImplAdmin();
		System.out.println("4");
		Admin adm = this.jdbcTemplate.queryForObject(query, rowMapper,email);
		System.out.println("5");
		return adm;
	}
	@Override
	public boolean validateAdmin(String email, String Password) {
		// TODO Auto-generated method stub
				try {
					System.out.println("Under try");
				String q="select count(*) from admin where email=? and password=?";
				
				Integer count = this.jdbcTemplate.queryForObject(q,Integer.class, email,Password);
				if(count==1) {
					System.out.println("User Found");
					return true;
				}
				else {
					System.out.println("User not Found");
				
				return false;
				}
				} catch (Exception e) {
			        System.out.println("Error: An unexpected error occurred: ");
			        return false;
			    }
	}
	@Override
	public int insert(Restro restro) {
		// TODO Auto-generated method stub
		String q="insert into restro(rname,raddress,rphone1,rphone2,rgst,oname,oemail,ophone,outlet,otime,ctime,holiday) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		int r = this.jdbcTemplate.update(q,restro.getRname(),restro.getRaddress(),restro.getRphone1(),restro.getRphone2(),restro.getRgst(),restro.getOname(),restro.getOemail(),restro.getOphone(),restro.getOutlet(),restro.getOtime(),restro.getCtime(),restro.getHoliday());
		return r;
	}
	@Override
	public int insert(AddProduct ap,String path1) {
		// TODO Auto-generated method stub
		String q="insert into addproduct(pname,description,type,price,path,flag,rname,rgst) values(?,?,?,?,?,0,?,?)";
		int r = this.jdbcTemplate.update(q,ap.getPname(),ap.getDescription(),ap.getType(),ap.getPrice(),path1,ap.getRname(),ap.getRgst());
		return r;
	}
	@Override
	public List<AddProduct> show(AddProduct ap) {
		// get all product
				String q="select * from addproduct";
				
				List<AddProduct> products = this.jdbcTemplate.query(q,new RowMapperProduct());
				return products;
	}
	@Override
	public List<AddProduct> showburger(AddProduct ap) {
		String q="select * from addproduct where type='Burger'";
		
		List<AddProduct> products = this.jdbcTemplate.query(q,new RowMapperProduct());
		return products;
	}
	@Override
	public List<AddProduct> showicecreme(AddProduct ap) {
       String q="select * from addproduct where type='Ice-Cream'";
		
		List<AddProduct> products = this.jdbcTemplate.query(q,new RowMapperProduct());
		return products;
	}
	@Override
	public List<AddProduct> showcake(AddProduct ap) {
		String q="select * from addproduct where type='Cake'";
		
		List<AddProduct> products = this.jdbcTemplate.query(q,new RowMapperProduct());
		return products;
	}
	@Override
	public List<AddProduct> showfries(AddProduct ap) {
		String q="select * from addproduct where type='Fries'";
		
		List<AddProduct> products = this.jdbcTemplate.query(q,new RowMapperProduct());
		return products;	
	}
	@Override
	public List<AddProduct> showbiryani(AddProduct ap) {
		String q="select * from addproduct where type='Biryani'";
		
		List<AddProduct> products = this.jdbcTemplate.query(q,new RowMapperProduct());
		return products;
	}
	@Override
	public List<AddProduct> showchicken(AddProduct ap) {
		String q="select * from addproduct where type='Chicken'";
		
		List<AddProduct> products = this.jdbcTemplate.query(q,new RowMapperProduct());
		return products;
	}
	@Override
	public List<AddProduct> showpizza(AddProduct ap) {
		String q="select * from addproduct where type='Pizza'";
		
		List<AddProduct> products = this.jdbcTemplate.query(q,new RowMapperProduct());
		return products;
	}
	@Override
	public List<AddProduct> showsandwich(AddProduct ap) {
		String q="select * from addproduct where type='Sandwitch'";
		
		List<AddProduct> products = this.jdbcTemplate.query(q,new RowMapperProduct());
		return products;
	}
	@Override
	public AddProduct showbuy(int id) {
		String  query="select * from addproduct where id=?";
		System.out.println("3");
		AddProduct product = this.jdbcTemplate.queryForObject(query,new RowMapperProduct(),id);
		System.out.println("5");
		return product;
	}
	@Override
	public int insert(Orders order) {
		// TODO Auto-generated method stub
		        System.out.println("i am here");
				String q="insert into miniproject.order(pname,quantity,note,address,phone1,phone2,tprice,flag,cod,name,rname,path,datetime) values(?,?,?,?,?,?,?,0,?,?,?,?,now())";
				int r = this.jdbcTemplate.update(q,order.getPname(),order.getQuantity(),order.getNote(),order.getAddress(),order.getPhone1(),order.getPhone2(),order.getTprice(),order.getCod(),order.getName(),order.getRname(),order.getPath());
				System.out.println("2");
				return r;
	}
	@Override
	public List<Orders> getOrders() {
		// get all orders
				String q="select * from miniproject.order where flag=0";
				
				List<Orders> order1 = this.jdbcTemplate.query(q,new RowMapperImplOrders());
				return order1;
	}
	@Override
	public int updateOrder(int id) {
		//updating data
				System.out.println("1");
				String query="update miniproject.order set flag=1 where id=?";
				System.out.println("2");
				int r = this.jdbcTemplate.update(query,id);
				System.out.println("3");
				return r;
	}
	@Override
	public List<Orders> getCompleteOrders() {
		// get all orders
		String q="select * from miniproject.order where flag=1";
		
		List<Orders> order1 = this.jdbcTemplate.query(q,new RowMapperImplOrders());
		return order1;
	}
	@Override
	public int insert(DeliveryBoy dboy) {
		// TODO Auto-generated method stub
				String q="insert into deliveryboy(name,email,phone1,phone2,address,dob,vd,ld,exp,idproof) values(?,?,?,?,?,?,?,?,?,?)";
				int r = this.jdbcTemplate.update(q,dboy.getName(),dboy.getEmail(),dboy.getPhone1(),dboy.getPhone2(),dboy.getAddress(),dboy.getDob(),dboy.getVd(),dboy.getLd(),dboy.getExp(),dboy.getIdproof());
				return r;
	}
	@Override
	public List<Orders> getNewOrders() {
		// get all orders
				String q="select * from miniproject.order where flag=0 or flag=1";
				
				List<Orders> order1 = this.jdbcTemplate.query(q,new RowMapperImplOrders());
				return order1;
	}
	@Override
	public List<Orders> getRunningOrders() {
		// TODO Auto-generated method stub
		String q="select * from miniproject.order where flag=2";
		
		List<Orders> order1 = this.jdbcTemplate.query(q,new RowMapperImplOrders());
		return order1;
	}
	@Override
	public int updateDeliveryOrder(int id) {
		System.out.println("1");
		String query="update miniproject.order set flag=2 where id=?";
		System.out.println("2");
		int r = this.jdbcTemplate.update(query,id);
		System.out.println("3");
		return r;
	}
	@Override
	public int completeOrder(int id) {
		System.out.println("1");
		String query="update miniproject.order set flag=3 where id=?";
		System.out.println("2");
		int r = this.jdbcTemplate.update(query,id);
		System.out.println("3");
		return r;
	}
	@Override
	public List<Orders> getCompletedOrders() {
		// TODO Auto-generated method stub
				String q="select * from miniproject.order where flag=3";
				
				List<Orders> order1 = this.jdbcTemplate.query(q,new RowMapperImplOrders());
				return order1;
	}
	@Override
	public Restro showRestro(String email) {
		String  query="select * from restro where oemail=?";
		System.out.println("3");
		RowMapper<Restro> rowMapper = new RowMapperImplRestro();
		System.out.println("4");
		Restro restro = this.jdbcTemplate.queryForObject(query, rowMapper,email);
		System.out.println("5");
		return restro;
	}
	@Override
	public boolean validateRestro(String email, String ophone) {
		// TODO Auto-generated method stub
				try {
					System.out.println("Under try");
				String q="select count(*) from restro where oemail=? and ophone=?";
				
				Integer count = this.jdbcTemplate.queryForObject(q,Integer.class, email,ophone);
				if(count==1) {
					System.out.println("User Found");
					return true;
				}
				else {
					System.out.println("User not Found");
				
				return false;
				}
				} catch (Exception e) {
			        System.out.println("Error: An unexpected error occurred: ");
			        return false;
			    }
	}
	@Override
	public DeliveryBoy showdb(String email) {
		String  query="select * from deliveryboy where email=?";
		System.out.println("3");
		RowMapper<DeliveryBoy> rowMapper = new RowMapperImplDb();
		System.out.println("4");
		DeliveryBoy dBoy = this.jdbcTemplate.queryForObject(query, rowMapper,email);
		System.out.println("5");
		return dBoy;
	}
	@Override
	public boolean validatedb(String email, String phone1) {
		// TODO Auto-generated method stub
				try {
					System.out.println("Under try");
				String q="select count(*) from deliveryboy where email=? and phone1=?";
				
				Integer count = this.jdbcTemplate.queryForObject(q,Integer.class, email,phone1);
				if(count==1) {
					System.out.println("User Found");
					return true;
				}
				else {
					System.out.println("User not Found");
				
				return false;
				}
				} catch (Exception e) {
			        System.out.println("Error: An unexpected error occurred: ");
			        return false;
			    }
	}
	@Override
	public List<Orders> getCart(String phone1) {
		// get all orders
		String q="select * from miniproject.order where phone1=?";
		
		List<Orders> order1 = this.jdbcTemplate.query(q,new RowMapperImplOrders(),phone1);
		return order1;
		
	}
	@Override
	public int insertFeedback(Feedback fb) {
		// TODO Auto-generated method stub
				String q="insert into feedback(pname,rname,q1,q2,q3) values(?,?,?,?,?)";
				int r = this.jdbcTemplate.update(q,fb.getPname(),fb.getRname(),fb.getQ1(),fb.getQ2(),fb.getQ3());
				return r;
	}
	@Override
	public int insert(ReservedTable rt, String path1) {
		// TODO Auto-generated method stub
		String q="insert into rtable(ftable,rtable,type,reserved_price,path,flag,rname,rgst) values(?,?,?,?,?,0,?,?)";
		int r = this.jdbcTemplate.update(q,rt.getFtable(),rt.getRtable(),rt.getType(),rt.getReserved_price(),path1,rt.getRname(),rt.getRgst());
		return r;
	}
	@Override
	public Orders getCart(int id) {
		String  query="select * from miniproject.order where id=?";
		System.out.println("st1");
		RowMapper<Orders> rowMapper = new RowMapperImplOrders();
		System.out.println("st2");
		Orders ctm = this.jdbcTemplate.queryForObject(query, rowMapper,id);
		System.out.println("st3");
		return ctm;
	}
	
	
	
	
	
	
	
	
	


	

}
