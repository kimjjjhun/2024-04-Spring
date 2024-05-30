package org.zerock.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j
public class UploadController {
	
		//Form방식 파일업로드
		//get으로 uploadForm 응답
		@GetMapping("/uploadForm")
		public void uploadForm() {
			log.info("upload form...............");
		}
		//formaction에서 post 요청으로 처리시 여기에서 응답한다.
		@PostMapping("/uploadFormAction")
		public void uploadFormActionPost(MultipartFile[] uploadFile, Model model) {
			
			String uploadFolder = "c:\\upload";
			
			for(MultipartFile multipartFile : uploadFile) {
				
				log.info("=============================================================");
				log.info("upload file Name : " + multipartFile.getOriginalFilename());
				log.info("upload file size : " + multipartFile.getSize());
			
				File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());	//저장 대상
				
				try {
					multipartFile.transferTo(saveFile);		//파일저장
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
		}
		//Ajax 방식 파일업로드
		@GetMapping("/uploadAjax")
		public void uploadAjax() {
			log.info("upload ajax..................");
		}
		
		@PostMapping("/uploadAjaxAction")
		@ResponseBody
		public void uploadAjaxAction(MultipartFile[] uploadFile) {
			
			String uploadFolder = "c:\\upload";
			
			//make folder........
			File uploadPath = new File(uploadFolder, getFolder()); //  c:\\upload\2024\04\29
			
			log.info(uploadPath);
			
			if(uploadPath.exists() == false) {
				uploadPath.mkdirs();				//폴더or디렉토리 생성
			}
			
				for(MultipartFile multipartFile : uploadFile) {
				
				log.info("=============================================================");
				log.info("upload file Name : " + multipartFile.getOriginalFilename());
				log.info("upload file size : " + multipartFile.getSize());
				
				String uploadFileName = multipartFile.getOriginalFilename();
				
				uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") +1);
				
				log.info(uploadFileName);
				
				UUID uuid = UUID.randomUUID();
				
				log.info("uuid : " + uuid);
				
				//중복인파일명 앞에 랜덤한 영문자 32자를 붙인다. erteewfdfgertwef_apple.jpg 
				uploadFileName = uuid.toString() + "-" + uploadFileName;
				
				File saveFile = new File(uploadPath, uploadFileName);	// 만든 경로에 저장대상을 넣겠다.
				
				try {
					multipartFile.transferTo(saveFile);		//파일저장
					
					
					if(checkImageType(saveFile)) {
						
							FileOutputStream thumbnail = new FileOutputStream(
								new File(uploadPath, "s_" + uploadFileName)
								);
						
						Thumbnailator.createThumbnail(multipartFile.getInputStream(),thumbnail, 100,100);
						thumbnail.close();
					}
					
					
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
		}
		//폴더생성 컨트롤러
		private String getFolder() {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			Date date = new Date();
			
			String str = sdf.format(date);
			
			return str.replace("-",File.separator);
		}
		
		//이미지 체크컨트롤러
		private boolean checkImageType(File file) {
			try {
				String contentType = Files.probeContentType(file.toPath());
				
				return contentType.startsWith("image");   // 이미지파일이 맞음
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return false;	// 이미지파일이 아님
			
		}
	}
