package com.example.lab2grupo2.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="integrantes")

public class Integrante {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idArtistas")
    private Integer idArtistas;
    @Column(name="Nombre_Grupo")
    private String Nombre_Grupo;
    @Column(name="Tipo_musica")
    private String Tipo_musica;
    @Column(name="Fecha_creacion")
    private String Fecha_creacion;



}
