package br.ucsal.util;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class LoadTables {

	public void creatScherma(Connection c) throws SQLException {
		
		
		Statement stmt = c.createStatement();
		stmt.execute("CREATE TABLE USUARIOS ( ID INTEGER IDENTITY PRIMARY KEY,  LOGIN VARCHAR(255),"
				+ " SENHA  VARCHAR(255) );");
		
		stmt.execute("CREATE TABLE ESPACOS ( ID INTEGER IDENTITY PRIMARY KEY,  IDENTIFICACAO VARCHAR(255),"
				+ " ANDAR  VARCHAR(255), FUNCAO VARCHAR(255), BLOCO_ID INTEGER, TIPO_ID INTEGER );");
		stmt.execute("CREATE TABLE BLOCOS ( ID INTEGER IDENTITY PRIMARY KEY,  NOME VARCHAR(255),"
				+ " LETRA  VARCHAR(255), LATITUDE VARCHAR(255), LONGITUDE VARCHAR(255) );");
		stmt.execute("ALTER TABLE ESPACOS ADD FOREIGN KEY (BLOCO_ID) REFERENCES BLOCOS(ID);");
		stmt.execute("CREATE TABLE TIPOS ( ID INTEGER IDENTITY PRIMARY KEY, NOME VARCHAR(255), DESCRICAO  VARCHAR(255));");
		stmt.execute("ALTER TABLE ESPACOS ADD FOREIGN KEY (TIPO_ID) REFERENCES TIPOS(ID);");
		stmt.execute("CREATE TABLE RESERVAS ( ID INTEGER IDENTITY PRIMARY KEY, TITULO VARCHAR(255), DESCRICAO  VARCHAR(255), "
				+ "JUSTIFICATIVA VARCHAR(255), SOLICITANTE VARCHAR(255), TELEFONE VARCHAR(255), "
				+ "DATA DATE, HORA_INICIO TIME, HORA_FIM TIME, ESPACO_ID INTEGER);");
		stmt.execute("ALTER TABLE RESERVAS ADD FOREIGN KEY (ESPACO_ID) REFERENCES ESPACOS(ID);");
		
		//INSERTS
		stmt.execute("insert into blocos (nome,letra,latitude,longitude) values ('BLOCO A','A',3.123,'3.333');");
		stmt.execute("insert into blocos (nome,letra,latitude,longitude) values ('BLOCO B','B',3.123,'3.333');");
		stmt.execute("insert into blocos (nome,letra,latitude,longitude) values ('BLOCO C','C',3.123,'3.333');");
		stmt.execute("insert into blocos (nome,letra,latitude,longitude) values ('BLOCO D','D',3.123,'3.333');");
		
		
		stmt.execute("insert into tipos (nome,descricao) values ('ADITORIO SUPERIOR','AUDITORIO COM 200 LUGARES');");
		stmt.execute("insert into tipos (nome,descricao) values ('ADITORIO INFERIOR','AUDITORIO COM 150 LUGARES');");
		stmt.execute("insert into tipos (nome,descricao) values ('ADITORIO POS','AUDITORIO COM 100 LUGARES');");
		stmt.execute("insert into tipos (nome,descricao) values ('SALA DE AULA GRANDE','SALA COM 120 LUGARES');");
		stmt.execute("insert into tipos (nome,descricao) values ('SALA DE AULA NORMAL','SALA COM 60 LUGARES');");
		stmt.execute("insert into tipos (nome,descricao) values ('SALA DE AULA PEQUENA','SALA COM 30 LUGARES');");
		stmt.execute("insert into tipos (nome,descricao) values ('LABORATORIO DE INFORMATICA','LABORATORIO COM 16 COMPUTADORES');");
		
		String senha = SegurancaUtil.generateMD5("123456");
		stmt.execute("insert into usuarios (login,senha) values ('admin','"+senha+"');");
		stmt.execute("insert into usuarios (login,senha) values ('user','"+senha+"');");
		







		
	}
}
