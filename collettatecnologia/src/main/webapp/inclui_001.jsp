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

    <script src="js/validar.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
   
   <script type="text/javascript">
		$(document).ready(function(){	
			$("#cnpj").mask("99.999.999/9999-99");
		});

		$(document).ready(function() {
			  $("#razao_social").keyup(function(){
			    $("#razao_social").val($("#razao_social").val().toUpperCase());
		  })
		})
		
		$(document).ready(function() {
			  $("#email").keyup(<script type="text/javascript">);
			  
		$(document).ready(function() {
			  $("#razao_social").keyup(function(){
			    $("#razao_social").val($("#razao_social").val().toUpperCase());
			  })
		})
		
		$(document).ready(function() {
			  $("#email").keyup(function(){
			    $("#email").val($("#email").val().toLowerCase());
			  })
		})
		
   </script>

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
      
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

            <li class="nav-item active">
                <a class="nav-link" href="index.jsp" target="blank" class="paginas">HOME<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="altera_001.jsp" target="blank" class="paginas">ATUALIZA CLIENTE<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="consulta_000.jsp" target="blank" class="paginas">CONSULTA CLIENTE<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="exclui_001.jsp" target="blank" class="paginas">EXCLUI CLIENTE<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>
        
          </ul>

        </div>
    </nav>

    <form name="form_cliente" id="form_cliente" action="inclui_002.jsp" form="POST" >

        <section class="container">        
            
            <div class="grid_colletta">        
                <div class="box menu">
                    <span>Cadastro de Clientes</span>
                    <span></span>
                </div>       
            </div>
            
            <div class="grid_paginas"> 
                <div class="dados_pessoais"> 
                <tr>
                    <td> <h5> DADOS CLIENTES </h5> </td>
                    <!-- <td></td> -->
                </tr>
                </div>

                <div class="dados_pessoais_1">
        
                    <table>
                        
                        <tr>
                            <td>
                                <label for="descricao">CNPJ :</label> 
                            </td>

                            <td>
                                <input type="text" name="cnpj" id="cnpj" size="18" class="entrada"  > 
                            </td>
                        </tr>
      
                        <tr>
                            <td>
                                <label for="razao_social">Razão Social :</label> 
                            </td>
                            <td>
                                <input type="text" name="razao_social" id="razao_social"  size="60" class="entrada" > 
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <label for="email">E-mail :</label> 
                            </td>
                            <td>
                                <input type="email" name="email" id="email" size="60" class="entrada" > 
                            </td>
                        </tr>
                        
                         <tr>
                            <td>
                                <label for="pass">PassWord :</label> 
                            </td>
                            <td>
                                <input type="password" name="pass" id="pass" size="10" class="entrada" > 
                            </td>
                        </tr>
                        
                      </table>        
                </div>
            
               
                <!-- Botes de validar / enviar------------------------------------------------------------------------- -->

                <div class="validar_form">
                    <button type="button" class="btn btn-info btn-sm" onclick="return validar_tudo();">Validar Formulário</button>
                </div>

                <div class="enviar_cad">
                    <button type="submit" id="cadastrar"  disabled class="btn btn-info btn-sm" >Cadastrar</button>
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
    </form>
</body>
</html>