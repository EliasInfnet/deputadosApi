<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Exercicio java web spring" />
    <meta name="autor" content="Chrystian Cavalcante" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
      crossorigin="anonymous"
    />
    <link href="../_css/estilo.css" rel="stylesheet" />

    <title>Exercicio java web spring</title>
  </head>
  <body>
    <div id="container">
      <header>
        <nav class="navbar navbar-dark bg-dark">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">
              <img
                src="../_img/logo_at.png"
                alt=""
                width="30"
                height="24"
                class="d-inline-block align-text-top"
              />
              Trabalho de SpringBoot
            </a>
          </div>
        </nav>
        <img id="mainback" src="../_img/rioback.png" />
        <h3 id="maintext">Pesquise os deputados</h3>
      </header>
      <div id="divDeputados">
        <nav class="navbar navbar-light bg-light" id="navBusca">
          <div class="container-fluid">
            <a class="navbar-brand">Entre com o nome do deputado</a>
            <form:form class="d-flex" action="?" method="post" modelAttribute="pv">              
              <form:input
                class="form-control me-2"
                path="palavra"
                placeholder="Buscar"
              />
              <form:button class="btn btn-outline-success">Buscar</form:button>
            </form:form>
          </div>
        </nav>
        <hr/>     
        <div id="listaDeputados" class="row row-cols-4">
          <c:forEach items="${lista}" var="dep">
                <div class="card">
                    <img src="${dep.getUrlFoto()}" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">${dep.getNome()}</h5>
                      <p class="card-text">Partido : ${dep.getSiglaPartido()}</p>                  
                      <p class="card-text">Estado : ${dep.getSiglaUf()}</p>                  
                      <p class="card-text">Email : ${dep.getEmail()}</p>
                    </div>
                  </div>
              </c:forEach>
        </div>
    </div>
  </body>
</html>
