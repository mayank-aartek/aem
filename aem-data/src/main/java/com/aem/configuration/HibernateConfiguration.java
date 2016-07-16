package com.aem.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.ejb.HibernatePersistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;





@Configuration
@EnableTransactionManagement
@ComponentScan("com.aem.configuration")
@PropertySource("classpath:hibernate.properties")
@EnableJpaRepositories("com.aem.repository")
public class HibernateConfiguration
{
	
		
	@Autowired
    private Environment environment;
	
	@Bean
	public DataSource dataSource()
	{
		System.out.println("before datasource");
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(environment.getRequiredProperty("jdbc.driverClassName"));        
        dataSource.setUrl(environment.getRequiredProperty("jdbc.url"));
        dataSource.setUsername(environment.getRequiredProperty("jdbc.username"));
        dataSource.setPassword(environment.getRequiredProperty("jdbc.password"));
        System.out.println("after drivercClass");										
        
        return dataSource;

		
	}
	
	@Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
		System.out.println("entity manager");

        LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
        entityManagerFactoryBean.setDataSource(dataSource());
        entityManagerFactoryBean.setPersistenceProviderClass(HibernatePersistence.class);
        System.out.println("persitence entity manager");
        entityManagerFactoryBean.setPackagesToScan(environment.getRequiredProperty("entitymanager.packages.to.scan"));
        
        entityManagerFactoryBean.setJpaProperties(hibernateProperties());
        System.out.println("entity manager com.aem");

        return entityManagerFactoryBean;
    }
	
	private Properties hibernateProperties() {

        
		Properties properties = new Properties();
        properties.put("hibernate.dialect",environment.getRequiredProperty("hibernate.dialect"));
        properties.put("hibernate.show_sql",environment.getRequiredProperty("hibernate.show_sql"));
        properties.put("hibernate.format_sql",environment.getRequiredProperty("hibernate.format_sql"));

        return properties;
    }

    @Bean
    public JpaTransactionManager transactionManager() {

        JpaTransactionManager transactionManager = new JpaTransactionManager();
        transactionManager.setEntityManagerFactory(entityManagerFactory().getObject());

        return transactionManager;
    }

}
