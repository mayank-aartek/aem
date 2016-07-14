package com.aem.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages="com.aem")
public class AppConfig extends WebMvcConfigurerAdapter{

	/**
	 * Resolves views selected for rendering by @Controllers to tiles resources
	 * in the Apache TilesConfigurer bean
	 */
	@Bean
	public TilesViewResolver getTilesViewResolver(){
		
	TilesViewResolver viewResolver=new TilesViewResolver();
	viewResolver.setViewClass(TilesView.class);		
		return viewResolver;	
		
	}
	
	/**
	 * Configures Apache tiles definitions bean used by Apache TilesViewResolver
	 * to resolve views selected for rendering by @Controllers
	 */
	@Bean
	public TilesConfigurer getTilesConfigure() {

		TilesConfigurer tilesConfigurer = new TilesConfigurer();
		tilesConfigurer.setCheckRefresh(true);
		tilesConfigurer.setDefinitionsFactoryClass(TilesDefinitionsConfig.class);
		TilesDefinitionsConfig.addDefinitions();

		return tilesConfigurer;
	}
	
	
	
	
}
