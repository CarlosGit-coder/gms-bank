package com.gmsbank.controller;

import com.gmsbank.model.Clientes;
import com.gmsbank.model.Contas;
import com.gmsbank.model.TiposConta;
import com.gmsbank.repository.ClientesRepository;
import com.gmsbank.repository.ContasRepository;
import com.gmsbank.repository.TiposContaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/contas")
public class ContaController {

    @Autowired
    private ContasRepository contasRepository;

    @Autowired
    private ClientesRepository clientesRepository;

    @Autowired
    private TiposContaRepository tiposContaRepository;

    @GetMapping
    public String listar(Model model) {

        model.addAttribute("todasContas", contasRepository.findAll());
        model.addAttribute("todosClientes", clientesRepository.findAll());
        model.addAttribute("tiposConta", tiposContaRepository.findAll());
        return "contas"; // templates/contas.html
    }

    @PostMapping("/cadastrar")
    public String cadastrar(@RequestParam String numero_contas, @RequestParam Long clienteId,  @RequestParam Long tipoContaId,  @RequestParam(defaultValue = "0") Double saldo_contas,  @RequestParam(defaultValue = "0") Double limite_contas, RedirectAttributes redirectAttributes) {

        try {
            Clientes clientes = clientesRepository.findById(clienteId)
                    .orElseThrow(() -> new IllegalArgumentException("Cliente não encontrado: " + clienteId));

            TiposConta tiposConta = tiposContaRepository.findById(tipoContaId)
                    .orElseThrow(() -> new IllegalArgumentException("Tipo de conta não encontrado: " + tipoContaId));

            Contas conta = new Contas();
            conta.setNumero_contas(numero_contas);
            conta.setFK_id_clientes(clientes);
            conta.setFK_tipos_contas(tiposConta);
            conta.setSaldo_contas(saldo_contas);
            conta.setLimite_contas(limite_contas);
            conta.setAtiva_conta(true);

            contasRepository.save(conta);
            redirectAttributes.addFlashAttribute("sucesso", "Conta aberta com sucesso!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro ao cadastrar conta: " + e.getMessage());
        }
        return "redirect:/contas";
    }

    @PostMapping("/deletar/{id}")
    public String deletar(@PathVariable Long id, RedirectAttributes redirectAttributes) {

        try {
            Contas contas = contasRepository.findById(id).orElseThrow();
            contas.setAtiva_conta(false);
            contasRepository.save(contas);
            redirectAttributes.addFlashAttribute("sucesso", "Conta inativada com sucesso!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro ao inativar conta.");
        }
        return "redirect:/contas";
    }
}