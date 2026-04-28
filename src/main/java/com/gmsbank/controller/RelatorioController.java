package com.gmsbank.controller;

import com.gmsbank.model.Contas;
import com.gmsbank.model.Transacoes;
import com.gmsbank.repository.ClientesRepository;
import com.gmsbank.repository.ContasRepository;
import com.gmsbank.repository.TransacoesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Comparator;
import java.util.List;

@Controller
public class RelatorioController {

    @Autowired
    private ClientesRepository clientesRepository;

    @Autowired
    private ContasRepository contasRepository;

    @Autowired
    private TransacoesRepository transacoesRepository;

    @GetMapping("/relatorios")
    public String relatorios(Model model) {

        List<Transacoes> todasTransacoes = transacoesRepository.findAll();
        List<Contas> todasContas = contasRepository.findAll();

        List<Transacoes> ultimasTransacoes = todasTransacoes.stream()
                .sorted(Comparator.comparing(
                        Transacoes::getRealizado_em_transacoes,
                        Comparator.nullsLast(Comparator.reverseOrder())
                ))
                .limit(10)
                .toList();

        List<Contas> contasMaiorSaldo = todasContas.stream()
                .sorted(Comparator.comparingDouble(Contas::getSaldo_contas).reversed())
                .limit(10)
                .toList();

        double volumeTotal = todasTransacoes.stream()
                .mapToDouble(Transacoes::getValor_transacoes)
                .sum();

        model.addAttribute("totalClientes", clientesRepository.count());
        model.addAttribute("totalContas", contasRepository.count());
        model.addAttribute("totalTransacoes", todasTransacoes.size());
        model.addAttribute("volumeTotal", volumeTotal);
        model.addAttribute("ultimasTransacoes", ultimasTransacoes);
        model.addAttribute("contasMaiorSaldo", contasMaiorSaldo);
        model.addAttribute("todasTransacoes", todasTransacoes);

        return "relatorios";
    }
}