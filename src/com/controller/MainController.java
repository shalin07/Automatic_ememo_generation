package com.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.LoginDAO;
import com.VO.LoginVO;

@Controller
public class MainController
	{
	
	@Autowired
	LoginDAO ld;

		@RequestMapping(value={"/","index.html"},method=RequestMethod.GET)
		public ModelAndView loadIndex() 
			{
				return new ModelAndView("admin/admin_login");
			}
	
	
		@RequestMapping(value = "/login.html",method=RequestMethod.GET)
		public String loadLogin() 
			{
				return "admin/admin_login";
			}
		
		@RequestMapping(value="/admin.html",method=RequestMethod.GET)
		public String admin() 
			{
				System.out.println("in main con of admin");
				return "admin/index";
			}
		
		@RequestMapping(value = "/staff.html",method=RequestMethod.GET)
		public String user(HttpSession session)
			{
				/*Authentication auth = SecurityContextHolder.getContext().getAuthentication();	
				
				User user=(User)auth.getPrincipal();
				
				String userName=user.getUsername();
				
				System.out.println("userName:"+userName);
				
				LoginVO lv = new LoginVO();
				
				lv.setUsername(userName);
				
				List ls=this.ld.getLoginId(lv);
				
				LoginVO lvo=(LoginVO)ls.get(0);
				
				int loginId =lvo.getLoginid();
				
				System.out.println("loginId:"+loginId);
				
				session.setAttribute("loginId",loginId);*/
				
				return "staff/NewFile";
			}
	
		@RequestMapping(value = "403page.html",method=RequestMethod.GET)
		public String AccessDenied()
			{
				return "staff/403page";
			}
		
		@RequestMapping(value="logout.html",method=RequestMethod.GET)
		public String logout(HttpSession session)
			{
				return "admin/admin_login";
			}
}