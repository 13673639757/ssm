package com.kaige.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kaige.entity.User;
import com.kaige.service.UserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Resource  
    private UserService userServiceImpl;  
    
	private User currentuser;
    @RequestMapping("/showUser")  
    public String toIndex(HttpServletRequest request,Model model){  
        int userId = Integer.parseInt(request.getParameter("id"));  
        User user = userServiceImpl.getUserById(userId);  
        model.addAttribute("user", user);  
        return "showUser";  
    }
    
    @RequestMapping("/view")
    public String view() {
        return "login";
    }
    
    @RequestMapping("/userList")
    public String userList(@RequestParam(required=true,defaultValue="1") Integer pn,HttpServletRequest request,Model model){
        PageHelper.startPage(pn, 5);
        List<User> userList = userServiceImpl.selectByList();
        PageInfo<User> p=new PageInfo<User>(userList);
        model.addAttribute("currentuser", currentuser);
        model.addAttribute("page", p);
        model.addAttribute("list",userList);
        return "userList";
    }
    /**
     */
    @RequestMapping("toAddUser")
    public String toAddUser(){
        return "add";
    }
    /**
     * @param model
     * @param user
     * @return
     */
    @RequestMapping("addUser") 
    public String addUser(Model model,User user){
        try {
            if(user != null){
                userServiceImpl.saveUser(user);
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return "redirect:/user/userList.action";
    }
    
    /**
     * @param id
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/getUser")  
    public String getUser(int id,Model model){
        model.addAttribute("user", userServiceImpl.getUserById(id));  
        return "update";
    }
    
    /**
     * @param model
     * @param request
     * @param user
     * @return
     */
    @RequestMapping("updateUser")  
    public String UpdateUser(Model model,User user){
             if(userServiceImpl.updateUser(user)){  
                    return "redirect:/user/userList.action";  
                } 
         return "/error";  
    }

    /**
     * @param id
     * @param request
     * @param response
     */
    @RequestMapping("/delUser") 
    public String deleteUser(int id,Model model){
        userServiceImpl.deleteUser(id);  
        return "redirect:/user/userList.action";
    }

    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(User u, Model model) {
    	String name = u.getName();
        currentuser = userServiceImpl.findByUsername(name);

        if (currentuser == null || !u.getPassword().equals(currentuser.getPassword())) {
            return "redirect:/user/view.action";
        } else {
            model.addAttribute("currentuser", currentuser);
           
            return "redirect:/user/userList.action";
        }
    }
}
