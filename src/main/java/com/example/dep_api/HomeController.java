package com.example.dep_api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SpringBootApplication
public class HomeController {

    @Autowired
    DeputadoService deputadoService;

    @RequestMapping("/")
    public String home(Model model) {
        List<Deputado> lista;
        lista = deputadoService.buscarDeputados("elias").dados;
        model.addAttribute("lista", lista);
        System.out.println("Go -- Home");
        return "index";
    }

}
