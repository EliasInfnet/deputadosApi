<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %> 

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Exercicio java web spring">
        <meta name="autor" content="Chrystian Cavalcante"> 
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link href="_fontawesome/css/all.css" rel="stylesheet">

        
        <link href="_css/estilo.css"            rel="stylesheet"/>
        <link href="_css/mobile.css"            rel="stylesheet" media="screen and (min-width:300px) and (max-width:700px)">
        <link href="_css/desktop-grande.css"    rel="stylesheet">
        <title>Exercicio java web spring</title>
    </head>
    <body>      
        <nav>
            <img src="_img/logo_at.png" alt="Infnet">
            <ul id="menu-desktop">
                <li><a href="#inicio">INÍCIO</a></li>
                <li><a href="#deputado">DEPUTADOS</a></li>
                <li><a href="#partido">PARTIDOS</a></li>
                <li><a href="#noticia">NOTÍCIAS</a></li>
                <li><a href="#evento">EVENTOS</a></li>
                <li><a href="#contato">CONTATO</a></li>
            </ul> 
            
            <ul id="menu-mobile">
                <li><a href="#inicio">INÍCIO</a></li>
                <li><a href="#deputado">DEPUTADOS</a></li>
                <li><a href="#partido">PARTIDOS</a></li>
                <li><a href="#noticia">NOTÍCIAS</a></li>
                <li><a href="#evento">EVENTOS</a></li>
                <li><a href="#contato">CONTATO</a></li>
            </ul> 
            
            <div id="menu-btn">
                <svg width="30" height="30">
                    <path d="M0,5 30,5"     stroke="#fff" stroke-width="4"/>
                    <path d="M0,15 30,15"   stroke="#fff" stroke-width="4"/>
                    <path d="M0,25 30,25"   stroke="#fff" stroke-width="4"/>
                </svg>
            </div>            
        </nav>
        
        <header>
            <h1 id="inicio">QUEM SÃO OS DEPUTADOS</h1>
            <h2>Conheça os Deputados, seus partidos e legislatura</h2>
            <ul class="btn">
                <li><a href="#deputado">DEPUTADOS</a></li>
            </ul>
        </header>
        
        <main>
            <div class="busca">
                <h3 id="deputado">DEPUTADOS</h3>
                <p>Consulte aqui os deputados da legislatura atual:</p>
                <input type="text" class="form-control" id="termoBusca" placeholder=" Nome do Deputado" required>
                <button class="btn" id="btnBusca"><i class="fas fa-search"> Buscar</i></button>
            </div>
            <section class="card"></section> 
            <section>
                <div class="busca_partidos">
                    <h3 id="partido">PARTIDOS</h3>
                    <p>Consulte aqui os Partidos existentes:</p>
                        <input type="text" class="form-control" id="buscaPartido" placeholder=" Nome do Partido" required>
                        <button class="btn" id="btnBusca"><i class="fas fa-search"> Buscar</i></button>
                </div>
            </section>
            <section class="container">
                
            </section>
            <div class="noticia">
                <h3 id="noticia">NOTÍCIAS</h3>
            </div>
            <section class="apresentacao">
                <section class="imagem">
                    <img class="zoom" src="_img/noticias.jpg" alt="Noticias">
                </section>

                <section class="noticia">
                    <h2>Comitiva da câmara visita infnet</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas accumsan ante at luctus condimentum. Aliquam mollis venenatis justo quis maximus.</p>
                    <button class="btn-noticia" id="btnBusca">VER MAIS NOTICIAS</button>                    
                </section>
            </section>
            <h2 id="evento">EVENTOS</h2>
            <p>Consulte aqui os eventos agendados:</p>
            <section class="eventos">
                <div>
                    <input type="text" id="desc_vento" class="form-control" placeholder="Descrição evento">
                </div>
                <div>
                    <input type="text" id="data_evento" class="form-control" placeholder="Data evento">
                </div>
                    <button class="btn-evento">Buscar</button>
                    
            </section>
            <button class="btn" id="btnBusca"><i class="fas fa-search"> Eventos da semana</i></button>
                <section id="contato">
                    <form id="form">
                        <h2 class="busca">Contato</h2>
                        <div class="form">
                            <label class="label" for="nome">Nome</label>
                            <input type="text" name="nome" id="nomeForm" placeholder="Nome" required>
                        </div>
                        <div class="form">
                            <label class="label" for="email">E-mail</label>
                            <input type="email" name="email" id="emailForm" placeholder="Email" required>
                        </div>
                        <div class="form">
                            <label class="label" for="msgForm">Mensagem</label>
                            <textarea name="msgForm" id="msgForm" cols="30" rows="10" placeholder="Insira aqui sua mensagem"
                                required></textarea>
                        </div>
                        <div class="form">
                            <button type="submit">Enviar</button>
                        </div>
                    </form>
                
                <section class="fale">
                    <h2 id="faleConosco">Fale Conosco</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas accumsan ante at luctus condimentum. Aliquam mollis venenatis justo quis maximus.</p>
                </section>
            </section>
            <div id="voltar">
                <a href="#inicio"><i class="fas fa-angle-up"></i></a>
            </div>
            <footer>
                <h2>&copy; Instituto Infnet. Exercício java web spring.</h2>
            </footer>
        </main>        
        
        <script src="_js/script.js"></script>
        <script src="_js/script_partido.js"></script>
        <script src="_js/jquery.js"></script>
        <script>
            $(function() {
                $("div#menu-btn").click(function() {
                    $("nav ul#menu-mobile").toggle();
                });
                
                $(window).resize(function() {
                   var largura = $(window).width(); 
                    if ( largura >= 701 ) {
                        $("nav ul#menu-mobile").hide();   
                    }
                });
            });
        </script>
    </body>
</html>