package kr.trip.domain;

import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
public class MemberVO implements UserDetails{

	 private static final long serialVersionUID = 1L;

   private String member_email;
   private String pwd;
   private String name;
   private String phone;
   private List<AuthVO> authList;
   private Date member_regdate;
   
   @Override
   public Collection<? extends GrantedAuthority> getAuthorities() {
	   
	   
      return authList.stream()
    		  .map(auth -> new SimpleGrantedAuthority(auth.getAuth()))
    		  .collect(Collectors.toList());
   }
   @Override
   public String getUsername() {
	   return member_email;
   }
   @Override
   public String getPassword() {
      return pwd;
   }
   @Override
   public boolean isAccountNonExpired() {
      return true;
   }
   @Override
   public boolean isAccountNonLocked() {
      return true;
   }
   @Override
   public boolean isCredentialsNonExpired() {
      return true;
   }
   @Override
   public boolean isEnabled() {
      return true;
   }
   
}