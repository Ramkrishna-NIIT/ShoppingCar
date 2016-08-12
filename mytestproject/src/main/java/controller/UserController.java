package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.userlist;

@Controller
public class UserController {

	
		
	    private UserService us;
	    
	    @Autowired
	    public UserController(UserService us)
	    {
	    	this.us=us;
	    }
	    public UserController()
	    {
	    	
	    }
	    

		 @RequestMapping(value = "/user", method = RequestMethod.GET )
		    public String listUser(Model model) {
		        model.addAttribute("user", new userlist());
		        //model.addAttribute("listfromtable", this.us.listUser());
		        return "registration";
		    }
		 
		 @RequestMapping(value= "/user/add", method = RequestMethod.POST)
		    public String addUser(@ModelAttribute("user") userlist u,BindingResult result, HttpServletRequest request){
		         
			 
			 u.setEnabled(true);
				u.setRole("ROLE_USER");
				us.addUser(u);
		      /*  if(p.getId() == 0){
		            //new person, add it
		            this.us.addUser(p);
		        }else{
		            //existing person, call update
		            this.us.updateUser(p);
		        }
		         */
		        return "redirect:/Showhomepage";
		         
		    }
		 
		/* @RequestMapping("/remove/{id}")
		    public String removeUser(@PathVariable("id") int id){
		         
		        this.us.removeUser(id);
		        return "redirect:/userlist";
		    }*/
		  
		  /*  @RequestMapping("/edit/{id}")
		    public String edituser(@PathVariable("id") int id, Model model){
		        model.addAttribute("userlist", this.us.getUserById(id));
		        model.addAttribute("listfromtable", this.us.listUser());
		        return "registration";
		    }
*/		
		
	/*	@RequestMapping("/")
		public String showIndexPage()
		{
			return("redirect:/students");
		}
*/
}
