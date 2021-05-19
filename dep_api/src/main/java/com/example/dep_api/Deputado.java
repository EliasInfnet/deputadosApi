package com.example.dep_api;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Deputado {

    @JsonIgnoreProperties(ignoreUnknown = true)

    @JsonProperty("nome")
    private String nome;

    public Deputado() {
    }

    @JsonProperty("nome")
    public String getNome() {
        return nome;
    }

    @JsonProperty("")
    public void setNome(String nome) {
        this.nome = nome;
    }

}
