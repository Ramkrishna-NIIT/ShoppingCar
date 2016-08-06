 package controller;


import java.util.ArrayList;
import java.util.List;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;




@Controller
public class HomeController {
	
	
	private ProductService ps;
	
	@Autowired
	public HomeController(ProductService ps) {
		
		this.ps=ps;
	}
	
	public HomeController() {
		}
    @RequestMapping(value={"/","Showhomepage"})
	public String showHomePage()
	{
		return "home";
	}
    
    @RequestMapping("/registration")
	public String showRegistrationPage()
	{
		return "registration";
	}
    
   /* @RequestMapping("/showhyndaicar")
   	public ModelAndView showMicrocar()
   	{
    	ModelAndView mv=new ModelAndView("hyndaidatatable");
    	
    	HyndaiProductDAOImpl hyndaiProductDAOImpl=new HyndaiProductDAOImpl();
    	List<HyndaiProduct> hyndaiProductlist=new ArrayList<HyndaiProduct>();
    	hyndaiProductlist=hyndaiProductDAOImpl.getHyndaiProductList();
    	
    	mv.addObject("listtojsp", hyndaiProductlist);
   		//return "datatable";
    	return mv;
   	}
*/    
    
    /*    @RequestMapping(value="", method = RequestMethod.GET)
        public String listPersons(Model model) {
    	
    	    model.addAttribute("product", new Product());
	        model.addAttribute("listfromtable", this.ps.listPersons());
	        return "marutidatatable";
    
    }*/
    
    
    @RequestMapping(value="/products",method = RequestMethod.GET)
    public ModelAndView listPersons(Model model){
      	 model.addAttribute("product", new Product());	
    	 model.addAttribute("listfromtable", this.ps.listPersons());   	
		List<Product> Productlist=new ArrayList<Product>();
		Productlist=ps.listPersons();
		String json = new Gson().toJson(Productlist);  // converting list into Google Gson object which is a string
		
		ModelAndView mv=new ModelAndView("marutidatatable");
		mv.addObject("myJson", json);
		return mv;

    }
    @RequestMapping(value= "/marutidatatable/add", method = RequestMethod.POST)
    public String addPerson(@ModelAttribute("product") Product p){
        
        if(p.getId() == 0){
            //new person, add it
            this.ps.addPerson(p);
        }else{
            //existing person, call update
            this.ps.updatePerson(p);
        }
         
        return "redirect:/products";
         }
    @RequestMapping("/remove/{id}")
    public String removePerson(@PathVariable("id") int id){
         
        this.ps.removePerson(id);
        return "redirect:/products";
    }
    
    @RequestMapping("/edit/{id}")
    public String editPerson(@PathVariable("id") int id, Model model){
        model.addAttribute("student", this.ps.getPersonById(id));
        model.addAttribute("listfromtable", this.ps.listPersons());
        return "marutidatatable";
    }
    
    
    @RequestMapping(value="/showuserdetails",method = RequestMethod.GET)
    public String userProductDetails(Model model) {
        model.addAttribute("listtojsp", this.ps.listPersons());
        return "UserDetails";
    }
    
    

    
    }
	


