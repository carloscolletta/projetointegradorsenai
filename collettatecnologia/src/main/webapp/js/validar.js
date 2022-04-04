// validar razao social
function validar_razao() {

  // $('input[name="nome"]').mask('SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS');

  let value = document.getElementById("razao_social").value;
  let re = /^[a-zA-ZéúíóáÉÚÍÓÁèùìòàçÇÈÙÌÒÀõãñÕÃÑêûîôâÊÛÎÔÂëÿüïöäËYÜÏÖÄ\-\ \s]+$/; 
  //value == "" || value == null

  if (!re.test(value)) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Razão Social inválida ou não informada');
    document.form_cliente.razao_social_nome.focus();
    return false;
  }
  return true;
}

//Validar CNPJ
function validar_cnpj() {
  
  $('input[name="cnpj]').mask('00000000000000');
 
  let value = document.getElementById("cnpj").value;
  
  if (value == "" || value == null || TestaCNPJ(value) == false ) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('CNPJ não informado ou inválido');
    document.form_cliente.cpf.focus();
    return false;
  } 
  $("#cnpj").mask("99999999999999");
  return true;
}

//Validar pass
function validar_pass() {

  let strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
  let mediumRegex = new RegExp("^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})");
  
  let value = document.getElementById("pass").value;
  
  if (!strongRegex.test(value) && !mediumRegex.test(value) )  {
    alert('Password inv´laida ou não informada');
    document.form_cliente.pass.focus();
    return false;
  }
  return true; 
}

;

// validar nome
function validar_email() {

  let value = document.getElementById("email").value;
  let re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; 

  if (!re.test(value)) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('E-mail não informado ou inválido');
    document.form_cliente.email.focus();
    return false;
  }
  return true;
}


function validar_tudo() {
  // se um deles for inválido, retorna false e o form não é submetido
  if (validar_cnpj() && validar_razao() && validar_email() && validar_pass())
            {
            document.getElementById('cadastrar').removeAttribute('disabled'); // ativar botao cadastrar
            alert("Tudo certo. Proximo passo Cadastrar");
          }
        else
          {
          return false;
          }
}

function valaltera() {
  // se um deles for inválido, retorna false e o form não é submetido
  if ( validar_razao()  && validar_email() && validar_pass() )
            {
            document.getElementById('atualizar').removeAttribute('disabled');
            alert("Tudo certo. Proximo passo Atualizar");
          }
        else
          {
          return false;
          }
}

// -Validar Cnpj - ---------------------------------------

function TestaCNPJ(cnpj) {
 
    cnpj = cnpj.replace(/[^\d]+/g,'');
 
    if(cnpj == '') return false;
     
    if (cnpj.length != 14)
        return false;
 
    // Elimina CNPJs invalidos conhecidos
    if (cnpj == "00000000000000" || 
        cnpj == "11111111111111" || 
        cnpj == "22222222222222" || 
        cnpj == "33333333333333" || 
        cnpj == "44444444444444" || 
        cnpj == "55555555555555" || 
        cnpj == "66666666666666" || 
        cnpj == "77777777777777" || 
        cnpj == "88888888888888" || 
        cnpj == "99999999999999")
        return false;
         
    // Valida DVs
    tamanho = cnpj.length - 2
    numeros = cnpj.substring(0,tamanho);
    digitos = cnpj.substring(tamanho);
    soma = 0;
    pos = tamanho - 7;
    for (i = tamanho; i >= 1; i--) {
      soma += numeros.charAt(tamanho - i) * pos--;
      if (pos < 2)
            pos = 9;
    }
    resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
    if (resultado != digitos.charAt(0))
        return false;
         
    tamanho = tamanho + 1;
    numeros = cnpj.substring(0,tamanho);
    soma = 0;
    pos = tamanho - 7;
    for (i = tamanho; i >= 1; i--) {
      soma += numeros.charAt(tamanho - i) * pos--;
      if (pos < 2)
            pos = 9;
    }
    resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
    if (resultado != digitos.charAt(1))
          return false;
           
    return true;
    
}