package com.example.lab2grupo2.Controllers;

import com.example.lab2grupo2.Repository.ArtistaRepository;
import com.example.lab2grupo2.Repository.IntegranteRepository;
import com.example.lab2grupo2.entity.Artista;
import com.example.lab2grupo2.entity.Integrante;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import java.util.List;

@Controller
public class IntegranteController {

    @Autowired
    IntegranteRepository integranteRepository;


    public String listaIntegrantes (Model model){
        List<Integrante> lista = integranteRepository.findAll();
        model.addAttribute("listaIntegrantes",lista);


        return "proveedores/lista";
    }
}
