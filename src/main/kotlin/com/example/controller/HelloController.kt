package com.example.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController

@RestController
class HelloController {

    @GetMapping("/")
    fun hello(): Map<String, String> {
        return mapOf("message" to "Hello World!")
    }

    @GetMapping("/hello")
    fun greet(@RequestParam(defaultValue = "World") name: String): Map<String, String> {
        return mapOf("message" to "Hello $name!")
    }
}