package com.example.lab2grupo2.Controllers;

import com.example.lab2grupo2.Repository.ArtistaRepository;
import com.example.lab2grupo2.Repository.ProveedoresRepository;
import com.example.lab2grupo2.entity.Artista;
import com.example.lab2grupo2.entity.Proveedor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Artista")
public class ArtistaController {

    @Autowired
    ArtistaRepository artistaRepository;


    public String listaArtistas (Model model){
        List<Artista> lista = artistaRepository.findAll();
        model.addAttribute("listaArtistas",lista);




        return "proveedores/lista";
    }



}
