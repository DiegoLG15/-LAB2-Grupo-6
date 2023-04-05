package com.example.lab2grupo2.entity;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;



@Getter
@Setter
@Entity
@Table(name="proveedoores")
public class Proveedor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idProveedores")
    private Integer idProveedores;
    @Column(name="Nombre")
    private String Nombre;
    @Column(name="Telefono")
    private Integer Telefono;
    @Column(name="Elemento")
    private String Elemento;


}
