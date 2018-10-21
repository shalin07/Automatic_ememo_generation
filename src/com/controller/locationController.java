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
import com.VO.LocationVO;


@Controller
public class locationController {
	
	@Autowired
	locationDAO ld;

	
	@RequestMapping(value="/admin_addlocation.html",method= RequestMethod.GET)
	public ModelAndView admin_location(){
		
		return new ModelAndView("admin/admin_addlocation");
	}

	@RequestMapping(value="/admin_addloca.html",method= RequestMethod.POST)
	public ModelAndView admin_loca(HttpServletRequest req){
		
		String s= req.getParameter("locationName");
		String s1= req.getParameter("locationDescription");
		
		LocationVO locationvo = new LocationVO();
		locationvo.setLocationName(s);
		locationvo.setLocationDescription(s1);
		ld.insert(locationvo);
		return new ModelAndView("redirect:admin_addlocation.html");
	}
	
	@RequestMapping(value="/admin_viewlocation.html",method= RequestMethod.GET)
	public ModelAndView admin_viewlocation(){
		LocationVO v= new LocationVO();
		
		
		//List<LocationVO> ls= new ArrayList<LocationVO>();
		List<LocationVO> ls=ld.viewLocation(v);
		
		return new ModelAndView("admin/admin_viewlocation","ls",ls);
		
	}
	
	@RequestMapping(value="/admin_editLocation.html",method= RequestMethod.GET)
	public ModelAndView admin_editLocation(HttpServletRequest req){
		LocationVO v= new LocationVO();
		
		String s1= req.getParameter("id");
		
		
		int i= Integer.parseInt(s1);
		v.setLocationId(i);
		
		List ls=ld.searchbyid(v);
		
		/*return new ModelAndView("viewdata"); to redirect search results to a new page*/
		/*return new ModelAndView("2(search)","msg",true);*/
		
		//return new ModelAndView("edit","ls",ls);
		//List<LocationVO> ls= new ArrayList<LocationVO>();
		//List<LocationVO> ls=d.Location(v);
		
		return new ModelAndView("admin/admin_editLocation","ls",ls);
		
	}
	
	@RequestMapping(value ="/admin_updateLocation.html", method = RequestMethod.POST)
	public ModelAndView updateLocation(HttpServletRequest req){
		
		String s= req.getParameter("locationName");
		String s1= req.getParameter("locationDescription");
		
		
		String s2= req.getParameter("locationId");
		int i= Integer.parseInt(s2);
		LocationVO locationvo = new LocationVO();
		locationvo.setLocationId(i);
		locationvo.setLocationName(s);
		locationvo.setLocationDescription(s1);
	
		ld.insert(locationvo);
		return new ModelAndView("redirect:admin_viewlocation.html");
	}

	@RequestMapping(value ="/delete.html", method = RequestMethod.GET)
	public ModelAndView delete(HttpServletRequest req){
		
		String locIdString= req.getParameter("id");
		
		
		int locID= Integer.parseInt(locIdString);
		LocationVO locVO= new LocationVO();
		locVO.setLocationId(locID);
		
		ld.delete(locVO);
		
		//List<LocationVO> ls=d.viewLocation(locVO);
		return new ModelAndView("redirect:admin_viewlocation.html");
	}

}
