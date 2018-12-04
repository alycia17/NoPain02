/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.nopain;

import javax.persistence.Column;

/**
 *
 * @author aluno
 */
public class Ususario {
    
     @Column (name = "cd_usuario")
      private Integer codUsuario;
     
     @Column (name = "nm_nome")
     private Integer nome;
     
    @Column (name = "ds_senha")
     private Integer senha;

    @Column (name = "sd_email")
     private Integer email;
    
    @Column (name = "nick_name")
     private Integer nick_name;
    
    @Column (name = "tp_tipo_usuario")
     private Integer tipo_usuario;
    
    @Column (name = "nr_cpf")
     private Integer cpf;
    
    @Column (name = "nr_cnpj")
     private Integer cnpj;
    
    @Column (name = "nr_telefone")
     private Integer telefone;
   
    
}
