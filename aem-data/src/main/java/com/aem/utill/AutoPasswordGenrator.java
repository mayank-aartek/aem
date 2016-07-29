package com.aem.utill;

import java.security.SecureRandom;

public class AutoPasswordGenrator {

	public static String createPassword() {
		final int PASSWORD_SIZE = 6;
	    SecureRandom random = new SecureRandom();
	    StringBuilder password = new StringBuilder();
	    while (password.length() < PASSWORD_SIZE) {
	        char character = (char) random.nextInt(Character.MAX_VALUE);
	        if ((character >= 'a' && character <= 'z') || (character >= 'A' && character <= 'Z') || (character >= '0' && character <= '9')) {
	            password.append(character);
	        }
	    }
	    System.out.println(password.toString());
	    return password.toString();
	}
}
