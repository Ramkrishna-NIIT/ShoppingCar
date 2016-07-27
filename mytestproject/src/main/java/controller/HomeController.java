package controller;
import java.util.ArrayList;
import java.util.List;
import model.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.ProductDAOImpl;
@Controller
public class HomeController {
    @RequestMapping(value={"/","ShowHomepage"})
	public String showHomePage()
	{
		return "home";
	}
    
    @RequestMapping("/registration")
	public String showRegistrationPage()
	{
		return "registration";
	}
    
    @RequestMapping("/showmicrocar")
   	public ModelAndView showMicrocar()
   	{
    	ModelAndView mv=new ModelAndView("datatable");
    	
    	ProductDAOImpl productDAOImpl=new ProductDAOImpl();
    	List<Product> productlist=new ArrayList<Product>();
    	productlist=productDAOImpl.getProductList();
    	
    	mv.addObject("listtojsp", productlist);
   		//return "datatable";
    	return mv;
   	}
      


    
    }
	


