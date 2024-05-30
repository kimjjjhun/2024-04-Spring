package kr.trip.service;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import com.google.gson.JsonObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class certifiedPhoneNumber {
	public void certifiedPhoneNumber(String phone, String numStr) {
		 
        String api_key = "NCSQ50PS79QY6SNL";
          String api_secret = "PEHS56XK2ZUXE7GTVN6REDAIIH2GT64X";
          Message coolsms = new Message(api_key, api_secret);

        
          HashMap<String, String> params = new HashMap<String, String>();
          params.put("to", phone);    
          params.put("from", "01025521653");   
          params.put("type", "SMS");
          params.put("text", " + 인증번호는 +["+numStr+"] +입니다. ");
          params.put("app_version", "test app 1.2"); // application name and version

          try {
              JSONObject obj =  coolsms.send(params);
              System.out.println(obj.toString());
          } catch (CoolsmsException e) {
              System.out.println(e.getMessage());
              System.out.println(e.getCode());
          }

   }

}