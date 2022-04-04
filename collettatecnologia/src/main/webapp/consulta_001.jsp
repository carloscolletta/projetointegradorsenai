<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="collettatecnologia.clientes"  %>
<%@ page import="collettatecnologia.ConectaDB" %>


<%

String pesq_cc = request.getParameter("pesq");
pesq_cc = pesq_cc.replaceAll("\\.","");
pesq_cc = pesq_cc.replaceAll("\\-","");
pesq_cc = pesq_cc.replaceAll("\\/","");
pesq_cc = pesq_cc.trim();
String sql = "";

clientes clienteClass = new clientes();
ConectaDB   bd  = new ConectaDB();
Connection conn = bd.Conectar();

if (pesq_cc == "") {
	sql = "SELECT * FROM clientes";
} else {
		sql = "SELECT * FROM clientes where cnpj like '%"+pesq_cc+"%' or razao_social like '%"+pesq_cc+"%'";
};

Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(sql);
%>    

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

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Alterna navegação">
          <span class="navbar-toggler-icon bg-info"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

            <li class="nav-item active">
                <a class="nav-link" href="index.jsp" target="blank" class="paginas">HOME<span class="sr-only">(Página atual)</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="inclui_001.jsp" target="blank" class="paginas">NOVO CLIENTE<span class="sr-only">(Página atual)</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="altera_001.jsp" target="blank" class="paginas">ATUALIZA CLIENTE<span class="sr-only">(Página atual)</span></a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="exclui_001.jsp" target="blank" class="paginas">EXCLUI CLIENTE<span class="sr-only">(Página atual)</span></a>
            </li>
        
          </ul>

        </div>
    </nav>

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
	                    <td> <h5> CLIENTES CADASTRADOS </h5> </td>
	                    <!-- <td></td> -->
	                </tr>
                </div>
                
                <div class="dados_pessoais_1">
                <table border="2"> 
                <tr>
                   <th colspan="7"> </th>  
                </tr>
                
                <tr>
				   <td>CNPJ </td>	
				   <td>RAZAO SOCIAL</td>
				   <td>E-MAIL</td>
				</tr>
                
   			 		<% 
						while(rs.next())
								{	
									%>
									<tr>
									<td  >
									<%=rs.getString("cnpj") %>
														
									</td>	
									<td  >
									<%=rs.getString("razao_social") %>
														
									</td>
									<td  >
									<%=rs.getString("email") %>
														
									</td>
									
									
									</tr>
									 <%
								}
						 conn.close();
					%>
	            </table>
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
    
</body>
</html>