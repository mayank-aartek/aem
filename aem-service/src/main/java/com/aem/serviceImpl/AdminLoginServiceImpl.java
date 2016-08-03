package com.aem.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aem.model.Login;
import com.aem.repository.AdminLoginRepository;
import com.aem.service.AdminLoginService;

@Service/*("userDetailsService")*/
public class AdminLoginServiceImpl implements/* UserDetailsService,*/ AdminLoginService {

	@Autowired
	private AdminLoginRepository adminLoginRepository;

	@Transactional(propagation = Propagation.REQUIRED)
	public boolean findByEmailPassword(String email, String password) {
		Login login = null;
		if (email != null || password != null) {
			login = adminLoginRepository.findByEmail(email);
			if (login != null && !login.equals("")) {
				if (login.getEmail().equals(email) && login.getPassword().equals(password)) {
					return true;
				}
				return false;
			}
		}

		return false;
	}

	
	
	

		/*@Transactional(propagation=Propagation.REQUIRED)
		public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException {
			int i=0;
			System.out.println("1");
			Login login = adminLoginRepository.findByEmailAndIsDeleted(username, i);
			List<GrantedAuthority> authorities = buildUserAuthority(login.getUserRole());

			return buildUserForAuthentication(login, authorities);
		
			return null;}
		
		@Transactional(propagation=Propagation.REQUIRED)
		private List<GrantedAuthority> buildUserAuthority(UserRole userRole) {
			System.out.println("2");
			Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();
			setAuths.add(new SimpleGrantedAuthority(userRole.getRole()));
			List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(setAuths);

			return Result;
		}

		@Transactional(propagation=Propagation.REQUIRED)
		private User buildUserForAuthentication(Login login, List<GrantedAuthority> authorities) {
			System.out.println("3");
			return new User(login.getEmail(), login.getEncrypted(), true, true, true, true, authorities);
		}

		@Transactional(propagation=Propagation.REQUIRED)
		public Login findByEmailPassword(Login login) {
			int i=0;
			System.out.println("4");
			 BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			 Login user = adminLoginRepository.findByEmailAndIsDeleted(login.getEmail(), i);
			 if(user!=null && !user.equals("")){
			 boolean match = encoder.matches(login.getPassword(),  user.getEncrypted());
			 if(match==true){
			return adminLoginRepository.findByEmailAndPassword(login.getEmail(), login.getPassword());
			 }else{
				 return null;
			 }
			 }else{
				 return null;
			 }
			 return null;
		}

		

		@Transactional(propagation=Propagation.REQUIRED)
		public boolean findByEmailPassword(String email) {
			System.out.println("5");
			Login login = adminLoginRepository.findByEmail(email);
			if (login != null && !login.equals("")) {
				//MailSend.forgotPassword(login.getEmail(), login.getPassword(), "user");
				return true;
			} else {
				return false;
			}
			return false;

		}

		public boolean findByEmailPassword(String email, String password) {
			// TODO Auto-generated method stub
			return false;
		}
*/
		

}
