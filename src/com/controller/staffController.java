package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.DAO;
import com.DAO.LoginDAO;
import com.DAO.locationDAO;
import com.DAO.staffDAO;
import com.VO.LocationVO;
import com.VO.LoginVO;
import com.VO.staffVO;
@Controller
public class staffController {
	
	@Autowired
	staffDAO sd;
	@Autowired
	LoginDAO ld;

	@RequestMapping(value="/admin_addstaff.html",method= RequestMethod.GET)
	public ModelAndView admin_addstaff(){
		
		return new ModelAndView("admin/admin_addstaff");
	}

	@RequestMapping(value="/admin_addsta.html",method= RequestMethod.POST)
	public ModelAndView admin_addsta(HttpServletRequest req){
		
		String s= req.getParameter("staffFn");
		String s1= req.getParameter("staffLn");
		String s2= req.getParameter("staffEmail");
		String s3= req.getParameter("staffPassword");
		String s4= req.getParameter("staffPh");
		staffVO staffvo = new staffVO();
		staffvo.setFirstName(s);
		staffvo.setLastName(s1);
		staffvo.setEmail(s2);
		staffvo.setPassword(s3);
		staffvo.setPhoneNumber(s4);
		
		LoginVO lv= new LoginVO();
		lv.setRole("ROLE_STAFF");
		lv.setEnable("1");
		lv.setPassword(s3);;
		lv.setUsername(s);
		ld.addUser(lv);
		staffvo.setLoginVO(lv);
			sd.insert(staffvo);
		return new ModelAndView("redirect:admin_addstaff.html");
	}



	
	
	@RequestMapping(value="/admin_viewStaff.html",method= RequestMethod.GET)
	public ModelAndView admin_viewStaff(){
		staffVO sv = new staffVO();
		List<staffVO> ls=sd.viewStaff(sv);
		
		
		return new ModelAndView("admin/admin_viewStaff","ls",ls);
		
	}
	
	@RequestMapping(value="/admin_editStaff.html",method= RequestMethod.GET)
	public ModelAndView admin_editLocation(HttpServletRequest req){
		staffVO sv = new staffVO();
		
		String s1= req.getParameter("id");
		
		
		int i= Integer.parseInt(s1);
		sv.setStaffID(i);
		
		List ls=sd.searchbyid(sv);
		
		/*return new ModelAndView("viewdata"); to redirect search results to a new page*/
		/*return new ModelAndView("2(search)","msg",true);*/
		
		//return new ModelAndView("edit","ls",ls);
		//List<LocationVO> ls= new ArrayList<LocationVO>();
		//List<LocationVO> ls=d.Location(v);
		
		return new ModelAndView("admin/admin_editStaff","ls",ls);
		
	}
	
	@RequestMapping(value ="/admin_updateStaff.html", method = RequestMethod.POST)
	public ModelAndView updateLocation(HttpServletRequest req){
		
		String s1= req.getParameter("staffFn");
		String s2= req.getParameter("staffLn");
		String s3= req.getParameter("staffEmail");
		String s4= req.getParameter("staffPassword");
		String s5= req.getParameter("staffPh");
		String s= req.getParameter("staffID");
		int i= Integer.parseInt(s);
		
		staffVO sv = new staffVO();
		sv.setStaffID(i);
		sv.setFirstName(s1);
		sv.setLastName(s2);
		sv.setEmail(s3);
		sv.setPassword(s4);
		sv.setPhoneNumber(s5);
		
		sd.insert(sv);
		return new ModelAndView("redirect:admin_viewStaff.html");
	}

	@RequestMapping(value ="/admin_deleteStaff.html", method = RequestMethod.GET)
	public ModelAndView delete(HttpServletRequest req){
		staffVO sv = new staffVO();
		String staffIdString= req.getParameter("id");
		
		
		int staffID= Integer.parseInt(staffIdString);
		
		sv.setStaffID(staffID);
		sd.delete(sv);
		
		//List<LocationVO> ls=d.viewLocation(locVO);
		return new ModelAndView("redirect:admin_viewStaff.html");
	}
}
