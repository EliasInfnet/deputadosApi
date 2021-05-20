package com.example.dep_api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SpringBootApplication
public class HomeController {

    @Autowired
    DeputadoService deputadoService;

    @RequestMapping("/")
    public String home(Model model) {
        List<Deputado> lista;
        lista = deputadoService.buscarDeputados("joão").dados;

        PalavraChave pv = new PalavraChave();
        model.addAttribute("lista", lista);
        model.addAttribute("pv", pv);
        System.out.println("Go -- Home");
        return "index";
    }

    @PostMapping("/")
    public String submitForm(@ModelAttribute("pv") PalavraChave pv, ModelMap model) {

        List<Deputado> lista1;
        lista1 = deputadoService.buscarDeputados(pv.getPalavra()).dados;
        model.addAttribute("lista", lista1);

        return "index";
    }
}
