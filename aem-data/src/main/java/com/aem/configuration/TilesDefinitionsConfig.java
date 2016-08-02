package com.aem.configuration;

import java.util.HashMap;
import java.util.Map;

import org.apache.tiles.Attribute;
import org.apache.tiles.Definition;
import org.apache.tiles.definition.DefinitionsFactory;

public class TilesDefinitionsConfig implements DefinitionsFactory{
	
	private static final Map<String, Definition> tilesDefinitions = new HashMap<String, Definition>();

	public Definition getDefinition(String name, org.apache.tiles.request.Request tilesContext) {
		// TODO Auto-generated method stub
		return tilesDefinitions.get(name);
	}

	private static void addDefaultLayoutDef(String name, String body, String leftheader, String header, String footer) {
		
		Map<String, Attribute> attributes = new HashMap<String, Attribute>();
		attributes.put("header", new Attribute(header));
		attributes.put("leftheader", new Attribute(leftheader));
		attributes.put("body", new Attribute("/WEB-INF/jsp/" + "" + body + "" + ".jsp"));
		attributes.put("footer", new Attribute(footer));
		tilesDefinitions.put(name, new Definition(name, new Attribute("/WEB-INF/layout/defaultLayout.jsp"), attributes));
	}
	
	
	private static void addWelcomeLayoutDef(String name, String body, String welcomeHeader, String welcomeFooter) {

		
		Map<String, Attribute> attributes = new HashMap<String, Attribute>();
		attributes.put("header", new Attribute(welcomeHeader));
		attributes.put("body", new Attribute("/WEB-INF/jsp/" + "" + body + "" + ".jsp"));
		attributes.put("footer", new Attribute(welcomeFooter));
		tilesDefinitions.put(name, new Definition(name, new Attribute("/WEB-INF/layout/welcomelayout.jsp"), attributes));
	}

	public static void addDefinitions() {
		// TODO Auto-generated method stub
		
		addDefaultLayoutDef("home", "login","" ,"/WEB-INF/layout/welcome-header.jsp", "/WEB-INF/layout/welcome-footer.jsp");
		//addWelcomeLayoutDef("home", "home","/WEB-INF/layout/welcome-header.jsp", "/WEB-INF/layout/welcome-footer.jsp");
				
		addDefaultLayoutDef("dashboard", "demo","/WEB-INF/layout/leftheader.jsp" ,"/WEB-INF/layout/header.jsp", "/WEB-INF/layout/footer.jsp");
		addDefaultLayoutDef("employeemanagement", "employeemanagement","/WEB-INF/layout/leftheader.jsp" ,"/WEB-INF/layout/header.jsp", "/WEB-INF/layout/footer.jsp");
		
		addDefaultLayoutDef("adminLogin", "adminLogin", "","/WEB-INF/layout/header.jsp", "/WEB-INF/layout/footer.jsp");
	    addDefaultLayoutDef("layout", "layout", "/WEB-INF/layout/leftheader.jsp","/WEB-INF/layout/header.jsp", "/WEB-INF/layout/footer.jsp");
	    addDefaultLayoutDef("employeeRegistration", "employeeRegistration", "/WEB-INF/layout/leftheader.jsp","/WEB-INF/layout/header.jsp", "/WEB-INF/layout/footer.jsp");
	    addDefaultLayoutDef("welcomePage", "welcomePage", "/WEB-INF/layout/leftheader.jsp","/WEB-INF/layout/header.jsp", "/WEB-INF/layout/footer.jsp");
	    addDefaultLayoutDef("profile", "profile", "/WEB-INF/layout/leftheader.jsp","/WEB-INF/layout/header.jsp", "/WEB-INF/layout/footer.jsp");
	    addDefaultLayoutDef("mail", "sendmail", "","", "");
		
		
	}
	
	

}
