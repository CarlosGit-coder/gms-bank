package com.gmsbank.controller;

import com.gmsbank.repository.ClientesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;

@Controller
public class ClienteController {

    @Autowired
    private ClientesRepository clientesRepository;

    @GetMapping("/clientes")
    public String roteClientes(Model model){
        var todosClientes = clientesRepository.findAll();

        model.addAttribute("todosClientes", todosClientes);

        return "clientes";
    }

}
