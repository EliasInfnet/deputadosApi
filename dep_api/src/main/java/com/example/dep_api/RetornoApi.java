package com.example.dep_api;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RetornoApi {

    @JsonProperty("dados")
    List<Deputado> dados;

}
