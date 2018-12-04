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
public class Endereco {
    
    @Column (name = "nm_rua")
     private Integer rua;
    
    @Column (name = "nm_bairro")
     private Integer bairro;
    
    @Column (name = "nm_cidade")
     private Integer cidade;
    
    @Column (name = "cd_endereco")
     private Integer endereco;
    
    @Column (name = "usuario_cd_usuario")
     private Integer cd_usuario;
    
}
