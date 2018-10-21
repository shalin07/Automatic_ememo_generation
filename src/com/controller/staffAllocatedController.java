package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.DAO;
import com.DAO.locationDAO;
import com.DAO.staffAllocationDAO;
import com.DAO.staffDAO;
import com.VO.LocationVO;
import com.VO.staffAllocationVO;
import com.VO.staffVO;
@Controller
public class staffAllocatedController {

	@Autowired
	staffAllocationDAO d;
	
	@Autowired
	staffDAO sd;
	
	@Autowired
	locationDAO ld;
	
	@RequestMapping(value="/admin_allocateStaff.html",method= RequestMethod.GET)
	public ModelAndView admin_allocateStaff(){
		LocationVO v= new LocationVO();
		staffVO sv = new staffVO();
		
		//List<LocationVO> ls= new ArrayList<LocationVO>();
		List<LocationVO> ls=ld.viewLocation(v);
		List<staffVO> l=sd.viewStaff(sv);
		ModelAndView mv = new ModelAndView("admin/admin_allocateStaff");
		mv.addObject("locationlist", ls);
		mv.addObject("stafflist", l);
		return mv;
		
		//return new ModelAndView("admin/admin_allocateStaff","ls",ls);
	}

	@RequestMapping(value="/admin_staffAllocation.html",method= RequestMethod.POST)
	public ModelAndView admin_staffAllocation(HttpServletRequest req){
		
		
		//List<LocationVO> ls= new ArrayList<LocationVO>();
		String s= req.getParameter("selectLocation");
		String s1= req.getParameter("selectStaff");
		String s2= req.getParameter("dateAssigned");
		
		staffAllocationVO sav= new staffAllocationVO();
		sav.setLocationAllocated(s);
		sav.setStaffName(s1);
		sav.setDateAssigned(s2);
		
		d.insert(sav);
		
		return new ModelAndView("redirect:admin_allocateStaff.html");
		
		//return new ModelAndView("admin/admin_allocateStaff","ls",ls);
	}

	@RequestMapping(value="/admin_viewAllocatedStaff.html",method= RequestMethod.GET)
	public ModelAndView admin_viewAllocatedStaff(){
		staffAllocationVO sav = new staffAllocationVO();
		
		List<staffAllocationVO> ls=d.viewStaffAllocation(sav);
		return new ModelAndView("admin/admin_viewAllocatedStaff","ls",ls);
	}

}
