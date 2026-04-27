package com.gmsbank.controller;

import com.gmsbank.model.Clientes;
import com.gmsbank.repository.ClientesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

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

    @PostMapping("/clientes/cadastrar")
    public String cadastrarClientes(@ModelAttribute Clientes clientes) {
        clientesRepository.save(clientes);
        return "redirect:/clientes";
    }

    @GetMapping("/clientes/editar/{id}")
    public String editarClientes(@PathVariable Long id, Model model) {
        Clientes clientes = clientesRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID não localizado"));
        model.addAttribute("clientes", clientes);
        return "editarClientes";
    }

    @PostMapping("/clientes/editar/{id}")
    public String salvarEdicao(@PathVariable Long id, @ModelAttribute Clientes clientes) {
        clientes.setPK_id_clientes(id);
        clientesRepository.save(clientes);
        return "redirect:/clientes";
    }

    @PostMapping("/clientes/deletar/{id}")
    public String deletarCliente(@PathVariable Long id) {
        clientesRepository.deleteById(id);
        return "redirect:/clientes";
    }

    @GetMapping("/clientes/contas")
    public String clientesComcontas(Model model) {

        List<Object[]> dados = clientesRepository.buscarClientesComContas();

        model.addAttribute("dados", dados);

        return "clientescontas";
    }

}
