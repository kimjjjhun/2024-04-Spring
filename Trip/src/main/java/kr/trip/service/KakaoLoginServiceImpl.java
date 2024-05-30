package kr.trip.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.SpringSecurityCoreVersion;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.thoughtworks.qdox.model.Member;

import kr.trip.domain.AuthVO;
import kr.trip.domain.MemberVO;
import kr.trip.mapper.MemberMapper;

@Service
public class KakaoLoginServiceImpl implements KakaoLoginService{

	/*
	 * @Autowired public IACDao dao;
	 */
	
	@Override
	public String getAccessToken(String authorize_code) throws Throwable {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);

			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			// POST 요청을 위해 기본값이 false인 setDoOutput을 true로

			con.setRequestMethod("POST");
			con.setDoOutput(true);
			// POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송

			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(con.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");

			sb.append("&client_id=3334abd3f2359d5a2d50f1d20357c04f"); // REST_API키 본인이 발급받은 key 넣어주기
			sb.append("&redirect_uri=http://localhost:8181/login/kakao"); // REDIRECT_URI 본인이 설정한 주소 넣어주기

			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.close();

			int responseCode = con.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			ObjectMapper objectMapper = new ObjectMapper();
			Map<String, Object> jsonMap = objectMapper.readValue(result, new TypeReference<Map<String, Object>>() {
			});
			access_Token = jsonMap.get("access_token").toString();
			refresh_Token = jsonMap.get("refresh_token").toString();

			System.out.println("access_Token : " + access_Token);
			System.out.println("refresh_Token : " + refresh_Token);

			br.close();
			bw.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return access_Token;
	}

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public MemberVO getUserInfo(String access_Token) throws Throwable {
		// 요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
				MemberVO userInfo = new MemberVO();
				String reqURL = "https://kapi.kakao.com/v2/user/me";

				try {
					URL url = new URL(reqURL);
					HttpURLConnection conn = (HttpURLConnection) url.openConnection();
					conn.setRequestMethod("GET");

					// 요청에 필요한 Header에 포함될 내용
					conn.setRequestProperty("Authorization", "Bearer " + access_Token);

					int responseCode = conn.getResponseCode();
					System.out.println("responseCode : " + responseCode);

					BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

					String line = "";
					String result = "";

					while ((line = br.readLine()) != null) {
						result += line;
					}
					System.out.println("response body : " + result);
					System.out.println("result type" + result.getClass().getName()); // java.lang.String
					
					
					
						// jackson objectmapper 객체 생성
					
						// JSON String -> Map
						JsonParser parser = new JsonParser();
						JsonElement element = parser.parse(result);


						JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
						JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

						// System.out.println(properties.get("nickname"));
						// System.out.println(kakao_account.get("email"));

						String nickname = properties.get("nickname").getAsString();
						String email = kakao_account.get("email").getAsString();

						
						userInfo.setName(nickname);
						userInfo.setMember_email(email);

				} catch (IOException e) {
					e.printStackTrace();
				}
				
				
					return userInfo;					
	}

	@Override
	public UserDetails getAuthorities(String member_email) throws Throwable {
		MemberVO vo = memberMapper.read(member_email);
		vo.getAuthorities();
		 
		 System.out.println("vo : " +  vo.getAuthorities());
		 Authentication authentication = new UsernamePasswordAuthenticationToken(member_email,"", vo.getAuthorities());
		 SecurityContextHolder.getContext().setAuthentication(authentication); 
		return vo;
	}
	
	

	
	
}