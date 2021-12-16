package com.example.test10_admin;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableAdminServer
@SpringBootApplication
public class Test10AdminApplication {

    public static void main(String[] args) {
        SpringApplication.run(Test10AdminApplication.class, args);
    }

}
