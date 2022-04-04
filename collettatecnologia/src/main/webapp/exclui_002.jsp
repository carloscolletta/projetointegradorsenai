<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="collettatecnologia.clientes" %>
<%@ page import="collettatecnologia.ConectaDB" %>

<%
	String cnpj_cli      = request.getParameter("cnpj");   
	String sql = "SELECT * FROM clientes WHERE cnpj = ".concat(cnpj_cli); 
	System.out.printf(sql);

	clientes clienteClass = new clientes();
	ConectaDB  bd   = new ConectaDB();
	Connection conn = bd.Conectar(); 

	Statement st    = conn.createStatement();
	ResultSet rs    = st.executeQuery(sql);
	String razao_social = "";
	String email        = "";
%>

<% while(rs.next())
{
%>
	<%razao_social  = rs.getString("razao_social");%>
<%	
	 email  = rs.getString("email");
}
conn.close();

// instanciar classe Vagas
 
clientes cli = new clientes();

//Transfer�ncia dos conte�dos tratados dos formul�rios
// para os atributos do objeto 
cli.setcnpj_cc(cnpj_cli);
cli.Excluir();



%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="ISO-8859-1">
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

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Alterna navegação">
          <span class="navbar-toggler-icon bg-info"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

            <li class="nav-item active">
                <a class="nav-link" href="index.jsp" target="blank" class="paginas">Home<span class="sr-only">(Página atual)</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="inclui_001.jsp" target="blank" class="paginas">NOVO CLIENTE<span class="sr-only">(Página atual)</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="altera_001.jsp" target="blank" class="paginas">ALTERA CLIENTE<span class="sr-only">(Página atual)</span></a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="consulta_000.jsp" target="blank" class="paginas">CONSULTA CLIENTE<span class="sr-only">(Página atual)</span></a>
            </li>
        
          </ul>

        </div>
    </nav>

    <form name="form_cliente" id="form_cliente" >

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
                    <td> <h5> Dados Clientes </h5> </td>
                    <!-- <td></td> -->
                </tr>
                </div>

                <div class="dados_pessoais_1">
        
                    <table>
					<tr>
                            <td>
                                <label for="cnpj_cli">CNPJ :</label> 
                            </td>
                            <td>
                               <%=cnpj_cli%>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <label for="razao_social">Raz�o Social :</label> 
                            </td>

                            <td>
                                <%=razao_social%>
                             </td>
                        </tr>
      
                        <tr>
                            <td>
                                <label for="email">E-mail :</label> 
                            </td>
                            <td>
                                <%=email%>
                            </td>
                        </tr>
                        
                        </table>        
                </div>
            
               
                <!-- Botes de validar / enviar------------------------------------------------------------------------- -->
				<div class="validar_form">
                <tr>
                    <td> <h5> CLIENTE EXCLUIDO COM SUCESSO</h5> </td>
                    <!-- <td></td> -->
                </tr>
                </div>

               
            
            </div>

            

            <div class="box rodape">
                <footer>
                    <p> Copyright &copy; 2022 Colletta Technology <br>
                    <!-- <a href="./_media/PolíticadePrivacidade.pdf" target="blank">Política de Privacidade</a> -->
                    </p>
                </footer>
            </div>

        </section>
    </form>
</body>

<!-- Carregando bibliotecas para o bootstrap -->

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>

</html>