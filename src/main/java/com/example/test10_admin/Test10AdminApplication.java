package com.example.test10_admin;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableAdminServer
@SpringBootApplication
@Slf4j
public class Test10AdminApplication {

    public static void main(String[] args) {

        System.out.println("start app");
        log.info("----------- start app ----------");

        SpringApplication.run(Test10AdminApplication.class, args);

        System.out.println("start app");
        log.info("----------- start app ----------");
    }

}
