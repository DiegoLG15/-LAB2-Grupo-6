package com.example.lab2grupo2.Controllers;

import com.example.lab2grupo2.Repository.ArtistaRepository;
import com.example.lab2grupo2.Repository.IntegranteRepository;
import com.example.lab2grupo2.entity.Artista;
import com.example.lab2grupo2.entity.Integrante;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
<<<<<<< HEAD
=======
import org.springframework.web.bind.annotation.PostMapping;
>>>>>>> 0f6f9d223bab3a79e2bb46e4e579af7d5339c279
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Integrante")
public class IntegranteController {

    @Autowired
    IntegranteRepository integranteRepository;

<<<<<<< HEAD

=======
>>>>>>> 0f6f9d223bab3a79e2bb46e4e579af7d5339c279
    @GetMapping("/listar")
    public String listaIntegrantes (Model model){
        List<Integrante> lista = integranteRepository.findAll();
        model.addAttribute("listaIntegrantes",lista);


        return "Integrante/lista";
    }

    @GetMapping("/nuevo")
    public String nuevoIntegrante(){


        return "Integrante/nuevo";

    };


    @PostMapping("/guardar")
    public String guardarIntegrante( Integrante integrante){

        integranteRepository.save(integrante);
        return "redirect:/Integrante/listar";



    };
}
