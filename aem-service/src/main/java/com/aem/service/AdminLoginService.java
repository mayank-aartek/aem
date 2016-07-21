package com.aem.service;

public interface AdminLoginService {

	boolean findByEmailPassword(String email, String password);
}
