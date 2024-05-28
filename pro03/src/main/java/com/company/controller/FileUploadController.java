package com.company.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/fileupload/")
public class FileUploadController {
private static final Logger log = LoggerFactory.getLogger(FileUploadController.class); 
	
	@GetMapping("main")
	public String home(Model model) {
		return "fileupload/home";
	}
	
	//업로드로 가는 메소드
	@GetMapping("upload")
	public String uploadForm(Model model) {
		return "fileupload/fileUpload";
	}
	
	@PostMapping("uploadPro")
	public String upload(@RequestParam("file") MultipartFile file, Model model) {
		String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드!
		long size = file.getSize(); //파일 사이즈
		
		log.info("파일명 : {}", fileRealName);
		log.info("용량크기(byte) : {}", size);
		
		model.addAttribute("fileRealName", "파일명 : " + fileRealName);
		model.addAttribute("size", "용량크기(byte) : "+size);
		
		//서버에 저장할 파일이름 fileextension으로 .jsp이런식의  확장자 명을 구함
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String uploadFolder = "D:\\test\\upload";
		
		
		/*
		  파일 업로드시 파일명이 동일한 파일이 이미 존재할 수도 있고 사용자가 
		  업로드 하는 파일명이 언어 이외의 언어로 되어있을 수 있습니다. 
		  타인어를 지원하지 않는 환경에서는 정산 동작이 되지 않습니다.(리눅스가 대표적인 예시)
		  고유한 랜던 문자를 통해 db와 서버에 저장할 파일명을 새롭게 만들어 준다.
		 */
		
		UUID uuid = UUID.randomUUID();
		log.info("UUID : {}", uuid.toString());
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		
		log.info("생성된 고유문자열 : {}", uniqueName);
		log.info("확장자명 : {}", fileExtension);
		
		model.addAttribute("uuid", "uuid : "+uuid.toString());
		
		String uuidName = uploadFolder+"\\"+uniqueName + fileExtension;
		
		model.addAttribute("uuidName", "uuidName : "+uuidName);
		
		// File saveFile = new File(uploadFolder+"\\"+fileRealName); uuid 적용 전
		
		File saveFile = new File(uuidName);  // 적용 후
		try {
			file.transferTo(saveFile); // 실제 파일 저장메서드(filewriter 작업을 손쉽게 한방에 처리해준다.)
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "fileupload/fileUploadOk";
	}
}
