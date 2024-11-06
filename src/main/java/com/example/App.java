package com.example;

public class App {
    public static void main(String[] args) {
        String env = System.getProperty("env");
        String dbUrl = System.getProperty("db.url");
        System.out.println("Environment: " + env);
        System.out.println("Database URL: " + dbUrl);
    }
}
