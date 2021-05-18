package com.example.dep_api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SpringBootApplication
public class HomeController {

    @Autowired
    DeputadoService deputadoService;

    @RequestMapping("/")
    public String home() {
        deputadoService.buscarDeputados("10");
        return "index";
    }

}
