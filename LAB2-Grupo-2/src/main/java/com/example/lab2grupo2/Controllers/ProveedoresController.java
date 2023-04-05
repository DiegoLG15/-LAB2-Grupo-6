package com.example.lab2grupo2.Controllers;

import com.example.lab2grupo2.Repository.ProveedoresRepository;
import com.example.lab2grupo2.entity.Proveedor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Proveedor")
public class ProveedoresController {
    @Autowired
    ProveedoresRepository proveedoresRepository;

    @GetMapping("/listar")
    public String listaProveedores (Model model){
        List<Proveedor> lista = proveedoresRepository.findAll();
        model.addAttribute("listaProveedores",lista);




        return "proveedores/lista";
    }



}
