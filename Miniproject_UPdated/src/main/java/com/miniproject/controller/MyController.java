package com.miniproject.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.miniproject.dao.CustomerDao;
import com.miniproject.entity.AddProduct;
import com.miniproject.entity.Admin;
import com.miniproject.entity.Customer;
import com.miniproject.entity.DeliveryBoy;
import com.miniproject.entity.Feedback;
import com.miniproject.entity.Orders;
import com.miniproject.entity.ReservedTable;
import com.miniproject.entity.Restro;
import com.miniproject.service.CustomerService;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

import java.util.Properties;
import java.util.Random;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MyController {
	

//	@Autowired
//	CustomerService customerService;
	@PostMapping("/sendEmailOtp")
    @ResponseBody
    public String sendEmailOtp(@RequestParam String email, @RequestParam String orderId, HttpSession session) {
        // Generate OTP
		System.out.println(email);
		System.out.println(orderId);
        String otp = String.valueOf(new Random().nextInt(900000) + 100000);
        session.setAttribute("otp", otp);
        session.setAttribute("orderId", orderId);
        
        

        final String fromEmail = "omphule77@gmail.com";
        final String password = "dasw ktts vsvt wlkm";  // Use App Password

        // SMTP settings
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        props.put("mail.debug", "true");
        Session mailSession = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        });

        try {
            Message message = new MimeMessage(mailSession);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("OTP for Order Verification");
            message.setText("Your OTP for order ID " + orderId + " is: " + otp);
            Transport.send(message);
            return "sent";
        } catch (MessagingException e) {
            e.printStackTrace();
            return "error";
        }
	}
	
    @PostMapping("/verifyEmailOtp/{id}")
    public String verifyOtp(@RequestParam String otp, @RequestParam String orderId, HttpSession session, Model model, @PathVariable("id") int id) {
        String storedOtp = (String) session.getAttribute("otp");
        String storedOrderId = (String) session.getAttribute("orderId");

        if (otp.equals(storedOtp) && orderId.equals(storedOrderId)) {
            session.removeAttribute("otp");
            session.removeAttribute("orderId");
            ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			int singleOrder = cd.completeOrder(id);
			System.out.println(singleOrder);
			model.addAttribute("orders",singleOrder);
			return "redirect:/completeorder";

        } else {
            model.addAttribute("error", "Invalid OTP");
            return "redirect:/runningorder"; // Create a simple JSP page to show this
        }
    }



	@RequestMapping("/register")
	public String registerForm()
	{
		return "Register";
	}
	
	@RequestMapping(path="/registerdetails",method=RequestMethod.POST)
	public String formhandle(@ModelAttribute Customer ctm, Model model) {
		System.out.println("1");
		ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
		CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
		System.out.println("error");
		int insert = cd.insert(ctm);
		System.out.println(insert);
		return "redirect:/login";
	
	}

	@RequestMapping("/login")
	public String loginForm()
	{
		return "Login";
	}
	
	@RequestMapping(path="/dologin" , method=RequestMethod.POST)
	public String checkUser(@RequestParam("email") String em,@RequestParam("password") String pwd,Model m, Customer ctm,AddProduct ap)
	{
		
		System.out.println(em+pwd);
		ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
		System.out.println("2");
		CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
		Customer show = cd.show(em);
		boolean validateUser = cd.validateUser(em, pwd);
		System.out.println(validateUser);
		System.out.println(show);
		if(validateUser==true)
		{
			System.out.println("Success");
			m.addAttribute("ctm",show);
			
			List<AddProduct> show1 = cd.show(ap);
			m.addAttribute("products",show1);
			return "home";
		}
		else {
		System.out.println("Email and Password Incorrect");
		return "null_page";
		}
	}
	
	
	@RequestMapping(path="/fq" , method=RequestMethod.POST)
	public String checkfq(@RequestParam("email") String email,@RequestParam("fq") String fq,@RequestParam("password1") String password1,Model m, Customer ctm,AddProduct ap)
	{
		
		ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
		System.out.println("2");
		CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
		Customer show = cd.show(email);
		boolean validateUser = cd.validateFq(email,fq,password1);
		System.out.println(validateUser);
		System.out.println(show);
		if(validateUser==true)
		{
			System.out.println("Success");
			return "Login";
		}
		else {
		System.out.println("Incorrect Security Code");
		return "null_page";
		}
	}
	
	@RequestMapping("/forgot")
	public String forgot()
	{

		return "forgot";
	}
	
//	@RequestMapping("/home")
//	public String home(Customer ctm,AddProduct ap,Model m)
//	{
//		System.out.println("hi");
//		ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
//		CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
//		List<AddProduct> show = cd.show(ap);
//		m.addAttribute("products",show);
//		return "home";
//	}
	
	@RequestMapping("/profile/{email}")
	public String profile(@PathVariable("email") String email,Model m)
	{
		System.out.println(email);
		ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
		System.out.println("2");
		System.out.println(email);
		CustomerDao cd1= context.getBean("customerDao",CustomerDao.class);
		Customer s = cd1.show(email+".com");
		System.out.println(s);
		m.addAttribute("info",s);
		System.out.println(s);
		return "profile";
	}
	
	
	//file upload procedure here
	
	@RequestMapping("/fileform/{email}")
	public String file(@PathVariable("email") String email,Model m)
	{
		System.out.println(email);
		return "fileform";
	}
	
	 @RequestMapping(path="/uploadimg/{email}", method=RequestMethod.POST)
	    public String fileUpload(@PathVariable("email") String email,@RequestParam("fileUpload") CommonsMultipartFile file,HttpSession s,Model model){
	        // Handle file upload logic here
	        System.out.println("File upload handler");
	       System.out.println(file.getName());
	       System.out.println(file.getSize());
	       byte[] data = file.getBytes();
	      System.out.println(data);
	      ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			
	       //we have to save this file to server
	       String path = s.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator+"img"+File.separator+file.getOriginalFilename();
	       String path1=file.getOriginalFilename();
	       System.out.println("path detect");
	      int insertFile = cd.insertFile(email,path1);
	      System.out.println(insertFile);
	      System.out.println("File inserted");
	       System.out.println(path);
	       try
	       {
	       FileOutputStream fos =new FileOutputStream(path);
	       fos.write(data);
	       fos.close();
	       System.out.println("File Uploaded");
	       model.addAttribute("filename",path1);
	       model.addAttribute("msg","uploaded successfuly");
	       }catch(IOException e)
	       {
	    	   e.printStackTrace();
	    	   System.out.println("File uploding error");
	    	   model.addAttribute("msg","uploaded erroe!!!!");
	       }
	       
	        return "profile";
	    }
	 
	 
	 //update profile
	 
	 @RequestMapping("/update")
		public String updateProfile(@ModelAttribute Customer ctm)
		{
			System.out.println("under update");
		System.out.println(ctm.getEmail());
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			System.out.println("om");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			int updateProduct = cd.updateProduct(ctm);
			System.out.println("hi");
			System.out.println(updateProduct);
			
			
			
			return "redirect:/profile/"+ctm.getEmail();
		}
	 
	 //admin 
	 @RequestMapping("/adlogin")
	 public String adminlogin()
	 {
		 return "adminlogin";
	 }
	 
		
		@RequestMapping(path="/adminlogin" , method=RequestMethod.POST)
		public String checkAdmin(@RequestParam("email") String em,@RequestParam("password") String pwd,Model m, Admin adm)
		{
			
			System.out.println(em+pwd);
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			System.out.println("2");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			Admin show = cd.showAdmin(em);
			boolean validateAdmin = cd.validateAdmin(em, pwd);
			System.out.println(validateAdmin);
			System.out.println(show);
			if(validateAdmin==true)
			{
				System.out.println("Success");
				m.addAttribute("adm",show);
				return "adminpage";
			}
			else {
			System.out.println("Email and Password Incorrect");
			return "null_page";
			}
		}
		
	 
	 
	 @RequestMapping("/adregister")
	 public String adminregister()
	 {
		 return "adminregister";
	 }

		
		@RequestMapping(path="/adminregister",method=RequestMethod.POST)
		public String adminhandle(@ModelAttribute Admin adm, Model model) {
			System.out.println("1");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class); 
			int insert = cd.insert(adm);
			System.out.println(insert);
			return "redirect:/adlogin";
		
		}
		
//		@RequestMapping("/adminpage")
//		public String adminpage() {
//			return "adminpage";
//		}

		@RequestMapping("/restroregister")
		public String restroregister() {
			return "restroregister";
		}
		
		@RequestMapping(path="/rregister",method=RequestMethod.POST)
		public String rregister(@ModelAttribute Restro restro, Model model)
		{
		System.out.println("1");
		ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
		CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
		int insert = cd.insert(restro);
		System.out.println(insert);
		return "redirect:/adminpage";
		}
		
//		@RequestMapping("/restropage")
//		public String restropage()
//		{
//			return "restropage";
//		}
//		
		@RequestMapping("/addproduct/{oemail}")
		public String addproduct(@PathVariable("oemail") String oemail ,Restro restro,Model m)
		{
			System.out.println(oemail);
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			Restro restro1=cd.showRestro(oemail+".com");
			System.out.println(restro1);
			m.addAttribute("restro",restro1);
			return "addproduct";
		}
		
		@RequestMapping("/reservation/{oemail}")
		public String reservation(@PathVariable("oemail") String oemail ,Restro restro,Model m)
		{
			System.out.println(oemail);
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			Restro restro1=cd.showRestro(oemail+".com");
			System.out.println(restro1);
			m.addAttribute("restro",restro1);
			return "reservation";
		}
		
		@RequestMapping(path="/rtable",method = RequestMethod.POST)
		public String rtable(@RequestParam("fileUpload") CommonsMultipartFile file,HttpSession s,@ModelAttribute ReservedTable rt, Model model)
		{
		System.out.println("1");
		 // Handle file upload logic here
        System.out.println("File upload handler");
       System.out.println(file.getName());
       System.out.println(file.getSize());
       byte[] data = file.getBytes();
      System.out.println(data);
  	
      //we have to save this file to server
      String path = s.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator+"img"+File.separator+file.getOriginalFilename();
      String path1=file.getOriginalFilename();
      System.out.println("path detect");
		ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
		CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
		int insert = cd.insert(rt,path1);
		System.out.println(insert);
	      System.out.println("File inserted");
	       System.out.println(path);
	       try
	       {
	       FileOutputStream fos =new FileOutputStream(path);
	       fos.write(data);
	       fos.close();
	       System.out.println("File Uploaded");
	       model.addAttribute("filename",path1);
	       model.addAttribute("msg","uploaded successfuly");
	       }catch(IOException e)
	       {
	    	   e.printStackTrace();
	    	   System.out.println("File uploding error");
	    	   model.addAttribute("msg","uploaded erroe!!!!");
	       }
	       
		return "redirect:/successupload";
		}
		
		@RequestMapping(path="/aproduct",method = RequestMethod.POST)
		public String aproduct(@RequestParam("fileUpload") CommonsMultipartFile file,HttpSession s,@ModelAttribute AddProduct ap, Model model)
		{
		System.out.println("1");
		 // Handle file upload logic here
        System.out.println("File upload handler");
       System.out.println(file.getName());
       System.out.println(file.getSize());
       byte[] data = file.getBytes();
      System.out.println(data);
  	
      //we have to save this file to server
      String path = s.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator+"img"+File.separator+file.getOriginalFilename();
      String path1=file.getOriginalFilename();
      System.out.println("path detect");
		ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
		CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
		int insert = cd.insert(ap,path1);
		System.out.println(insert);
	      System.out.println("File inserted");
	       System.out.println(path);
	       try
	       {
	       FileOutputStream fos =new FileOutputStream(path);
	       fos.write(data);
	       fos.close();
	       System.out.println("File Uploaded");
	       model.addAttribute("filename",path1);
	       model.addAttribute("msg","uploaded successfuly");
	       }catch(IOException e)
	       {
	    	   e.printStackTrace();
	    	   System.out.println("File uploding error");
	    	   model.addAttribute("msg","uploaded erroe!!!!");
	       }
	       
		return "redirect:/successupload";
		}
		
		@RequestMapping("/successupload")
		public String successupload()
		{
			return "successupload";
		}
		
		@RequestMapping("/burgerpage/{email}")
		public String burger(@PathVariable("email") String email,Customer ctm,AddProduct ap,Model m) {
			System.out.println("hi");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<AddProduct> show = cd.showburger(ap);
			
			m.addAttribute("products",show);
			Customer show1 = cd.show(email+".com");
			System.out.println(show1);
			m.addAttribute("user",show1);
			
			return "burgerpage";
		}
		@RequestMapping("/burgerpage")
		public String burgerpage()
		{
			return "burgerpage";
		}
		
		@RequestMapping("/icecremepage/{email}")
		public String icecreme(@PathVariable("email") String email,Customer ctm,AddProduct ap,Model m) {
			System.out.println("hi");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<AddProduct> show = cd.showicecreme(ap);
			m.addAttribute("products",show);
			Customer show1 = cd.show(email+".com");
			System.out.println(show1);
			m.addAttribute("user",show1);
			return "icecremepage";
		}
		@RequestMapping("/icecremepage")
		public String icecremepage()
		{
			return "icecremepage";
		}
		
		@RequestMapping("/cakepage/{email}")
		public String cake(@PathVariable("email") String email,Customer ctm,AddProduct ap,Model m) {
			System.out.println("hi");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<AddProduct> show = cd.showcake(ap);
			m.addAttribute("products",show);
			Customer show1 = cd.show(email+".com");
			System.out.println(show1);
			m.addAttribute("user",show1);
			return "cakepage";
		}
		@RequestMapping("/cakepage")
		public String cakepage()
		{
			return "cakepage";
		}
		
		@RequestMapping("/friespage/{email}")
		public String friespage(@PathVariable("email") String email,Customer ctm,AddProduct ap,Model m) {
			System.out.println("hi");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<AddProduct> show = cd.showfries(ap);
			m.addAttribute("products",show);
			Customer show1 = cd.show(email+".com");
			System.out.println(show1);
			m.addAttribute("user",show1);
			return "friespage";
		}
		
		@RequestMapping("/friespage")
		public String friespage()
		{
			return "friespage";
		}
		
		@RequestMapping("/biryanipage/{email}")
		public String biryanipage(@PathVariable("email") String email,Customer ctm,AddProduct ap,Model m) {
			System.out.println("hi");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<AddProduct> show = cd.showbiryani(ap);
			m.addAttribute("products",show);
			Customer show1 = cd.show(email+".com");
			System.out.println(show1);
			m.addAttribute("user",show1);
			return "biryanipage";
		}
		
		@RequestMapping("/biryanipage")
		public String biryanipage()
		{
			return "biryanipage";
		}
		
		@RequestMapping("/sandwichpage/{email}")
		public String sandwichpage(@PathVariable("email") String email,Customer ctm,AddProduct ap,Model m) {
			System.out.println("hi");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<AddProduct> show = cd.showsandwich(ap);
			m.addAttribute("products",show);
			Customer show1 = cd.show(email+".com");
			System.out.println(show1);
			m.addAttribute("user",show1);
			return "sandwichpage";
		}
		
		@RequestMapping("/sandwichpage")
		public String sandwichpage()
		{
			return "sandwichpage";
		}
		
		@RequestMapping("/chickenpage/{email}")
		public String chickenpage(@PathVariable("email") String email,Customer ctm,AddProduct ap,Model m) {
			System.out.println("hi");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<AddProduct> show = cd.showchicken(ap);
			m.addAttribute("products",show);
			Customer show1 = cd.show(email+".com");
			System.out.println(show1);
			m.addAttribute("user",show1);
			return "chickenpage";
		}
		
		@RequestMapping("/chickenpage")
		public String chickenpage()
		{
			return "chickenpage";
		}
		
		@RequestMapping("/pizzapage/{email}")
		public String pizzapage(@PathVariable("email") String email,Customer ctm,AddProduct ap,Model m) {
			System.out.println("hi");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<AddProduct> show = cd.showpizza(ap);
			m.addAttribute("products",show);
			Customer show1 = cd.show(email+".com");
			System.out.println(show1);
			m.addAttribute("user",show1);
			return "pizzapage";
		}
		
		@RequestMapping("/pizzapage")
		public String pizzapage()
		{
			return "pizzapage";
		}
		
		
		@RequestMapping("/buyproduct/{id}/{email}")
		public String buy(@PathVariable("id") int id,@PathVariable("email") String email,Model m,Customer ctm,AddProduct product)
		{
			System.out.println(id);
			System.out.println(email);
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			Customer show = cd.show(email+".com");
			System.out.println(show);
			AddProduct product2=cd.showbuy(id);
			System.out.println(product2);
			m.addAttribute("user",show);
			m.addAttribute("product",product2);
			return "buyproduct";
		}
		
		@RequestMapping(path="/order",method=RequestMethod.POST)
		public String order(@ModelAttribute Orders order, Model model) {
			System.out.println("under order");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			System.out.println("1");
			int insert = cd.insert(order);
			System.out.println(insert);
			return "redirect:/success";
		
		}
		
		@RequestMapping("/success")
		public String success()
		{
			return "success";
		}
		
		@RequestMapping("/seeorder")
		public String seeorder(Orders order,Model m)
		{
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<Orders> order1 = cd.getOrders();
			System.out.println("ok");
			m.addAttribute("orders",order1);
			return "seeorder";
		}
		
		//update Handler
		@RequestMapping("/updateorder/{id}")
		public String updateProduct(@PathVariable("id") int id,Model model,Orders order)
		{
			ApplicationContext context=new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			int singleOrder = cd.updateOrder(id);
			System.out.println(singleOrder);
			model.addAttribute("orders",singleOrder);
			return "redirect:/seeorder";
		}
		
		@RequestMapping("/seecompleteorder")
		public String seecompleteorder(Orders order,Model m)
		{
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<Orders> order1 = cd.getCompleteOrders();
			System.out.println("ok1");
			System.out.println(order1);
			m.addAttribute("orders",order1);
			return "seecompleteorder";
		}
		
		@RequestMapping("deliveryregister")
		public String deliveryregister()
		{
			return "deliveryregister";
		}
		
		@RequestMapping(path="/dregister",method=RequestMethod.POST)
		public String dregister(@ModelAttribute DeliveryBoy dboy, Model model) {
			System.out.println("1");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			int insert = cd.insert(dboy);
			System.out.println(insert);
			return "redirect:/adminpage";
		
		}
		
		
		@RequestMapping("/runningorder")
		public String runningorder( Orders order,Model m)
		{
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<Orders> order1 = cd.getRunningOrders();
			System.out.println("ok");
			m.addAttribute("orders",order1);
			return "runningorder";
		}
		
		@RequestMapping("/completeorder")
		public String completeorder(Orders order,Model m)
		{
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<Orders> order1 = cd.getCompletedOrders();
			System.out.println("ok");
			m.addAttribute("orders",order1);
			return "completeorder";
		}
		
		@RequestMapping("/deliveryboypage")
		public String deliveryboypage(Orders order,Model m)
		{
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
		List<Orders> order1 = cd.getNewOrders();
		System.out.println("ok");
		m.addAttribute("orders",order1);
		
			return "deliveryboypage";
		}
		
		@RequestMapping("/updatedorder/{id}")
		public String updatedorder(@PathVariable("id") int id,Orders order,Model m)
		{
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			int singleOrder = cd.updateDeliveryOrder(id);
			System.out.println(singleOrder);
			m.addAttribute("orders",singleOrder);
			return "redirect:/deliveryboypage";
		}
		
		@RequestMapping("/completeorder/{id}")
		public String completeorder(@PathVariable("id") int id,Orders order,Model m)
		{
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			int singleOrder = cd.completeOrder(id);
			System.out.println(singleOrder);
			m.addAttribute("orders",singleOrder);
			return "redirect:/runningorder";
		}
		
		@RequestMapping("/restrologin")
		public String restrologin()
		{
			return "restrologin";
		}
		
		@RequestMapping(path="/rlogin" , method=RequestMethod.POST)
		public String checkRestro(@RequestParam("email") String em,@RequestParam("ophone") String ophone,Model m)
		{
			
			System.out.println(em+ophone);
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			System.out.println("2");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			Restro show = cd.showRestro(em);
			boolean validateAdmin = cd.validateRestro(em, ophone);
			System.out.println(validateAdmin);
			System.out.println(show);
			if(validateAdmin==true)
			{
				System.out.println("Success");
				m.addAttribute("restro",show);
				return "restropage";
			}
			else {
			System.out.println("Email and Password Incorrect");
			return "null_page";
			}
		}
		
		@RequestMapping("/dblogin")
		public String dblogin()
		{
			return "dblogin";
		}
		
		@RequestMapping(path="/dlogin" , method=RequestMethod.POST)
		public String checkdb(@RequestParam("email") String em,@RequestParam("phone1") String phone1,Model m,Orders order)
		{
			
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			System.out.println("2");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			DeliveryBoy show = cd.showdb(em);
			boolean validateAdmin = cd.validatedb(em, phone1);
			System.out.println(validateAdmin);
			System.out.println(show);
			if(validateAdmin==true)
			{
				System.out.println("Success");
				List<Orders> order1 = cd.getNewOrders();
				System.out.println("ok");
				m.addAttribute("orders",order1);
				
				return "deliveryboypage";
			}
			else {
			System.out.println("Email and Password Incorrect");
			return "null_page";
			}
		}

		
		@RequestMapping("/landingpage")
		public String landingpage()
		{
			return "landingpage";
		}
		
		@RequestMapping("/cart/{phone1}")
		public String cart(@PathVariable("phone1") String phone1,Model m)
		{
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			System.out.println("2");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			List<Orders> order1 = cd.getCart(phone1);
			m.addAttribute("cart1",order1);
			System.out.println("3");
			return "cart";
		}
		
		@RequestMapping("/feedback")
		public String feedback(Feedback fb) {
			System.out.println("1");
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			int insert = cd.insertFeedback(fb);
			System.out.println(insert);
			return "feeback";
		}
		
		@RequestMapping("/logout")
		public String logout()
		{
			return "landpage";
		}
		
		@RequestMapping(path = "/reseved_table")
		public String reseved_table()
		{
			return "reseved_table";
		}
		
		@RequestMapping("/trackproduct/{id}")
		public String track(@PathVariable("id") int id,Model m,Customer ctm,AddProduct product)
		{
			ApplicationContext context = new ClassPathXmlApplicationContext("com/miniproject/config/config.xml");
			System.out.println("2");
			CustomerDao cd = context.getBean("customerDao",CustomerDao.class);
			Orders order1 = cd.getCart(id);
			m.addAttribute("t",order1);
			System.out.println(order1);
			return "trackproduct";
		}
		
		

}
