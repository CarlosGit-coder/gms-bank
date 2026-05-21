package com.gmsbank.controller;

import com.gmsbank.model.Clientes;
import com.gmsbank.repository.ClientesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class ClienteController {

    @Autowired
    private ClientesRepository clientesRepository;

    @GetMapping("/clientes")
    public String roteClientes(Model model) {
        var todosClientes = clientesRepository.findAll();
        model.addAttribute("todosClientes", todosClientes);
        return "clientes";
    }

    @PostMapping("/clientes/cadastrar")
    public String cadastrarClientes(@ModelAttribute Clientes clientes,
                                    RedirectAttributes redirectAttributes) {
        try {
            clientes.setAtivo_clientes(true); // novo cliente sempre ativo
            clientesRepository.save(clientes);
            redirectAttributes.addFlashAttribute("sucesso", "Cliente cadastrado com sucesso!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro ao cadastrar cliente: " + e.getMessage());
        }
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
    public String salvarEdicao(@PathVariable Long id,  @ModelAttribute Clientes clientes, RedirectAttributes redirectAttributes) {
        try {
            Clientes clienteAtual = clientesRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("ID não localizado"));
                    clientes.setPK_id_clientes(id);
            clientes.setAtivo_clientes(clienteAtual.getAtivo_clientes());
            clientesRepository.save(clientes);
            redirectAttributes.addFlashAttribute("sucesso", "Cliente atualizado com sucesso!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro ao atualizar cliente: " + e.getMessage());
        }
        return "redirect:/clientes";
    }

    @PostMapping("/clientes/deletar/{id}")
    public String deletarCliente(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        try {
            Clientes cliente = clientesRepository.findById(id).orElseThrow();
            cliente.setAtivo_clientes(false);
            clientesRepository.save(cliente);
            redirectAttributes.addFlashAttribute("sucesso", "Cliente inativado com sucesso!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro ao inativar cliente.");
        }
        return "redirect:/clientes";
    }

    @GetMapping("/clientes/contas")
    public String clientesComContas(Model model) {
        List<Object[]> dados = clientesRepository.buscarClientesComContas();
        model.addAttribute("dados", dados);
        return "clientescontas";
    }
}