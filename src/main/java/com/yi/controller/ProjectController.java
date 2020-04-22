package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hhn_projectMng.domain.Project;
import hhn_projectMng.service.ProjectService;


@Controller
public class ProjectController {
	@Autowired
	ProjectService service;
	
	@RequestMapping(value = "/project/register", method = RequestMethod.GET)
	public String registerGET() {
		
		return "/project/register";
	}
	
	@RequestMapping(value = "/project/register", method = RequestMethod.POST)
	public String registerPOST(Project p) throws Exception {
		service.create(p);
		return "redirect:/project/list";
	}
	
	@RequestMapping(value = "/project/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		List<Project> list = service.list();
		model.addAttribute("list", list); 
		return "/project/list";
	}
	
	@RequestMapping(value = "/project/read", method= RequestMethod.GET)
	public String read(int pno, Model model) throws Exception {
		Project p = service.readByNo(pno);
		model.addAttribute("p", p);
		model.addAttribute("startdate", p.getStartdate());
		model.addAttribute("enddate", p.getEnddate());
		return "/project/read";
	}
	
	@RequestMapping(value = "/project/delete", method = RequestMethod.GET)
	public String delete(int pno) throws Exception {
		service.delete(pno);
		return "redirect:/project/list";
	}
	
	@RequestMapping(value = "/project/update", method = RequestMethod.GET)
	public String modify(int pno, Model model) throws Exception {
		Project p = service.readByNo(pno);
		model.addAttribute("p", p);
		return "/project/update";  
	}
	
	@RequestMapping(value = "/project/update", method = RequestMethod.POST)
	public String update(Project p, Model model) throws Exception {
		System.out.println("변경 전 p : " + p);
		service.update(p);        
		System.out.println("변경 후 p : " + p);
		model.addAttribute("p", p);
		 return "redirect:/project/read?pno="+p.getPno();
	}  
	
}
