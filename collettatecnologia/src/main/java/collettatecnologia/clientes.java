package collettatecnologia;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import collettatecnologia.ConectaDB;

public class clientes {

	private String cnpj_cc;
	private String razao_social_cc;
	private String email_cc;
	private String pass_cc;
	private Date dt_cadastro_cc;
	
	public String getcnpj_cc() {
		return cnpj_cc;
	}

	public void setcnpj_cc(String cnpj_cc) {
		this.cnpj_cc = cnpj_cc;
	}

	public String getrazao_social_cc() {
		return razao_social_cc;
	}

	public void setrazao_social_cc(String razao_social_cc) {
		this.razao_social_cc = razao_social_cc;
	}

	public String getemail_cc() {
		return email_cc;
	}

	public void setemail_cc(String email_cc) {
		this.email_cc = email_cc;
	}

	public String getpass_cc() {
		return pass_cc;
	}

	public void setpass_cc(String pass_cc) {
		this.pass_cc = pass_cc;
	}

	public Date getdt_cadastro_cc() {
		return dt_cadastro_cc;
	}

	public void setdt_cadastro_cc(Date dt_cadastro_cc) {
		this.dt_cadastro_cc = dt_cadastro_cc;
	}


	public void Incluir() {

		try {
			// conecta com BD
			ConectaDB cbd = new ConectaDB();
			Connection conn = cbd.Conectar();  
		
			 
	        // inclusão modo objeto PreparedStatement
		
			String Sql = "insert into clientes(cnpj,razao_social,email,pass,dt_cadastro) values(?,?,?,?,?)";
			
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
			
			// inclusão modo objeto PreparedStatement - continuação
			comando.setString(1, cnpj_cc );
			comando.setString(2, razao_social_cc);
			comando.setString(3, email_cc);
		    comando.setString(4, pass_cc);
			comando.setDate(5, new Date(System.currentTimeMillis()) );
				        
			comando.execute();
			comando.close();
			conn.close();
			}
			catch (Exception e) {
			System.out.println(e.getMessage());
			}	
	}

public void Alterar()
{
	try {
		// conecta com BD
		ConectaDB cbd = new ConectaDB();
		Connection conn = cbd.Conectar();
		
        //Retorna mensagem de sucesso / insucesso da coneção 
        if (conn  != null) System.out.println("  STATUS--->Conectado com sucesso!!!!!") ;  
        else System.out.println("  STATUS--->Não foi possivel realizar conexão") ;  
         String Sql = "update clientes set razao_social = ?, email = ?, pass = ?";
		 Sql += " where cnpj = ?";
		 System.out.println(razao_social_cc);
		 PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);	 
		 
		 comando.setString(1, razao_social_cc);
		 comando.setString(2, email_cc);
		 comando.setString(3, pass_cc);
		 comando.setString(4, cnpj_cc );
		 
		 comando.execute();
		 comando.close();
		 conn.close();
	}
	catch (Exception e) {
		System.out.println(e.getMessage());
	}
}


public void Excluir()
{
	try {
		// conecta com BD
		ConectaDB cbd = new ConectaDB();
		Connection conn = cbd.Conectar();
		
		String Sql = "delete from clientes where cnpj = " + cnpj_cc;
		PreparedStatement comando = (PreparedStatement)	conn.prepareStatement(Sql);
		
		comando.execute();
		comando.close();
		conn.close();
	}
	catch (Exception e) {
		System.out.println(e.getMessage());
	}
}
}
