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
public class Post {
    
    @Column (name = "nm_comentario")
     private Integer comentario;
    
    @Column (name = "cd_post")
     private Integer post;
    
    @Column (name = "usuario_cd_usuario")
     private Integer cd_usuario;
    
}
