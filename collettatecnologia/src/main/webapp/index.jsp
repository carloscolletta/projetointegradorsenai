<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    
    <title>Colletta Technology</title>
    <link rel="icon" type="image/png" sizes="20X20"  href="img/logo.png"> 

    <!-- Acrescentar bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


     <!-- Acrescentar chamada para arquivo CSS -->
     <link rel="stylesheet" type="text/css" href="css/style.css"  > 

     <!-- Fontes Google -->
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@1,700&display=swap" rel="stylesheet">

     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet">   
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-info">

        <a class="navbar-brand" href="index.jsp"><img src="img/logo.png" class="logo"></a>
   
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Alterna navegaÃ§Ã£o">
          <span class="navbar-toggler-icon bg-info"></span>
        </button>
      '
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

            <li class="nav-item active">
                <a class="nav-link" href="./inclui_001.jsp" target="blank" class="paginas">NOVO CLIENTE<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="./altera_001.jsp" target="blank" class="paginas">ATUALIZA CLIENTE<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="./consulta_000.jsp" target="blank" class="paginas">CONSULTA CLIENTE<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="./exclui_001.jsp" target="blank" class="paginas">EXCLUI CIENTE<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

          </ul>
          
          
        </div>
    </nav>

    <section class="container">        
        
        <div class="grid_colletta">        
            <div class="box menu">
                <span></span>
            </div>       
        </div>
        
        <div class="grid_paginas"> 

            <div class="principal">
              <img src="img/home_negocios.png" class="negocios_fluid" >
            </div>
    
            <div class="prin_text">         
              <text class="texto">
                  <span> Sistemas para cadastro de clientes que farão acompanhamento de seus
                        projetos juntos a COLLETTA TECNOLOGIA.
                  </span>
                  <br>
              </text>
      
            </div> 

            <div class="prin_not">
             
            </div>

        </div> 

        <div class="box rodape">
            <footer>
                <p> Copyright &copy; 2022 Colletta Technology <br>
                   <!-- <a href="./_media/PoliÌticadePrivacidade.pdf" target="blank">PolÃ­tica de Privacidade</a> -->
                </p>
              </footer>
        </div>

    </section>
  
</body>

<!-- Carregando bibliotecas para o bootstrap -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous">
</script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
</script>

</html>