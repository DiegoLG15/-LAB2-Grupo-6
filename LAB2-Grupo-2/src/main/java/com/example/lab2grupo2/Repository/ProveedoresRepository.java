package com.example.lab2grupo2.Repository;


import com.example.lab2grupo2.entity.Proveedor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProveedoresRepository extends JpaRepository<Proveedor,Integer> {



}
