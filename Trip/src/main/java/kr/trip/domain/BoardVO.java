package kr.trip.domain;

import java.sql.Blob;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class BoardVO {
	private int board_id;
	private String title;
	private String content;
	private String member_email;
	private Date regdate;
    private Date updateDate;
    private int replyNum;
    private int likeNum;
    private int replyCnt;
    
}
