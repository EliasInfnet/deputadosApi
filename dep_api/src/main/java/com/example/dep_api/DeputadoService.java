package com.example.dep_api;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(url = "https://dadosabertos.camara.leg.br/api/v2/", name = "deputadoservice")
public interface DeputadoService {

    @GetMapping("deputados?itens={num}")
    RetornoApi buscarDeputados(@PathVariable("num") String num);

}
