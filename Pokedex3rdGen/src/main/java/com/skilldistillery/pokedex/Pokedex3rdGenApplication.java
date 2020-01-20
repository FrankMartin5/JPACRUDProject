package com.skilldistillery.pokedex;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class Pokedex3rdGenApplication extends SpringBootServletInitializer {
  @Override
  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
    return application.sources(Pokedex3rdGenApplication.class);
  }
  public static void main(String[] args) {
    SpringApplication.run(Pokedex3rdGenApplication.class, args);
  }
}