package com.example.dep_api;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Deputado {

    @JsonIgnoreProperties(ignoreUnknown = true)

    @JsonProperty("nome")
    private String nome;

    @JsonProperty("siglaPartido")
    private String siglaPartido;

    @JsonProperty("siglaUf")
    private String siglaUf;

    @JsonProperty("urlFoto")
    private String urlFoto;

    @JsonProperty("email")
    private String email;

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

    @JsonProperty("siglaPartido")
    public String getSiglaPartido() {
        return siglaPartido;
    }

    @JsonProperty("siglaUf")
    public String getSiglaUf() {
        return siglaUf;
    }

    @JsonProperty("urlFoto")
    public String getUrlFoto() {
        return urlFoto;
    }

    @JsonProperty("email")
    public String getEmail() {
        return email;
    }

}
