package com.mydrive;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan("com.mydrive")
public class MydrivebootApplication {

	public static void main(String[] args) throws Exception {
		SpringApplication.run(MydrivebootApplication.class, args);
	}
}
