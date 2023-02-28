package com.deep.learn.docker.dockerapp

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RestController


@RestController
class EchoController {
    @GetMapping("/echo/{name}")
    fun echo(@PathVariable name: String): String {
        return "Hello $name"
    }
}