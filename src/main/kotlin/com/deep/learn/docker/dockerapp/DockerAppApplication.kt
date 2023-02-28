package com.deep.learn.docker.dockerapp

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication

@SpringBootApplication
class DockerAppApplication {
    fun main(args: Array<String>) {
        SpringApplication.run(DockerAppApplication::class.java, *args)
    }
}


