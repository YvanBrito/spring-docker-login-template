package com.exemplo.demo.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/admin")
public class AdminController {

    @GetMapping("/secret")
    public String secretAdmin() {
        return "Essa informação só o ADMIN pode acessar!";
    }
}
