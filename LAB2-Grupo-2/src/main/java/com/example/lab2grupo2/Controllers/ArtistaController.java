package com.example.lab2grupo2.Controllers;

import com.example.lab2grupo2.Repository.ArtistaRepository;
import com.example.lab2grupo2.Repository.ProveedoresRepository;
import com.example.lab2grupo2.entity.Artista;
import com.example.lab2grupo2.entity.Proveedor;
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
@RequestMapping("/Artista")
public class ArtistaController {

    @Autowired
    ArtistaRepository artistaRepository;

<<<<<<< HEAD

=======
>>>>>>> 0f6f9d223bab3a79e2bb46e4e579af7d5339c279
    @GetMapping("/listar")
    public String listaArtistas (Model model){

        List<Artista> lista = artistaRepository.findAll();
        model.addAttribute("listaArtistas",lista);




        return "Artista/lista";
    }


    @GetMapping("/nuevo")
    public String nuevaArtista(){


        return "Artista/nuevo";

    };


    @PostMapping("/guardar")
    public String guardarArtista( Artista artista){

        artistaRepository.save(artista);
        return "redirect:/Artista/listar";



    };


}
