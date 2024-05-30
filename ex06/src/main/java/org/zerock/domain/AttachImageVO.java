package org.zerock.domain;

import lombok.Data;

@Data
public class AttachImageVO {
	/* 경로 */
	private String uploadPath;
	
	/* uuid */
	private String uuid;
	
	/* 파일 이름 */
	private String fileName;
	
	/* 이미지 id */
	private int image_id;
}
