package com.example.lab2grupo2.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="artistas")
public class Artista {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idArtista")
    private Integer idArtistas;
    @Column(name="Nombre_Grupo")
    private String Nombre_Grupo;
    @Column(name="Fecha_creacion")
    private String Fecha_creacion;
    @Column(name="Tipo_musica")
    private String Tipo_musica;



}
