package com.gmsbank.controller;

import com.gmsbank.repository.ClientesRepository;
import com.gmsbank.repository.ContasRepository;
import com.gmsbank.repository.TransacoesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;

@Controller
public class DashboardController {

    @Autowired
    private ClientesRepository clientesRepository;

    @Autowired
    private ContasRepository contasRepository;

    @Autowired
    private TransacoesRepository transacoesRepository;

    @GetMapping("/dashboard")
    public String roteDashboard(Model model){

        long totalClientes = clientesRepository.count();
        long totalContas = contasRepository.count();
        long totalTransacoes = transacoesRepository.count();

        var ultimasTransacoes = transacoesRepository.findAll();

        model.addAttribute("totalClientes", totalClientes);
        model.addAttribute("totalContas", totalContas);
        model.addAttribute("totalTransacoes", totalTransacoes);
        model.addAttribute("transacoes", ultimasTransacoes);

        return "dashboard";
    }

}
