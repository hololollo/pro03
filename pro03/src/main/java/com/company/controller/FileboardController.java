package com.company.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.dto.Fileboard;
import com.company.service.FileboardService;

@Controller
@RequestMapping("/fileboard/")
public class FileboardController {
	@Autowired
	private FileboardService fileboardService;
	
	@GetMapping("fileboardList.do")
	public String getFileboardList(Model model) {
		List<Fileboard> fileboardList = fileboardService.getFileboardList();
		model.addAttribute("fileboardList", fileboardList);
		return "fileboard/fileboardList";
	}
}
