package com.gmsbank.controller;

import com.gmsbank.service.BancoRoutineService;
import com.gmsbank.repository.ContasRepository;
import com.gmsbank.repository.TransacoesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.math.BigDecimal;

@Controller
public class TransacaoController {

    @Autowired
    private TransacoesRepository transacoesRepository;

    @Autowired
    private ContasRepository contasRepository;

    @Autowired
    private BancoRoutineService bancoRoutineService;

    @GetMapping("/transacoes")
    public String listar(Model model) {
        model.addAttribute("todasTransacoes", transacoesRepository.findAll());
        model.addAttribute("todasContas", contasRepository.findAll());
        return "transacoes";
    }

    @PostMapping("/transacoes/nova")
    public String nova(@RequestParam String tipo,
                       @RequestParam Long contaOrigemId,
                       @RequestParam(required = false) Long contaDestinoId,
                       @RequestParam BigDecimal valor,
                       @RequestParam(required = false) String descricao,
                       RedirectAttributes redirectAttributes) {
        try {
            if (valor.compareTo(BigDecimal.ZERO) <= 0) {
                throw new IllegalArgumentException("O valor deve ser positivo.");
            }

            switch (tipo) {
                case "Depósito" ->
                        bancoRoutineService.executarDeposito(contaOrigemId, valor, descricao);
                case "Saque" ->
                        bancoRoutineService.executarSaque(contaOrigemId, valor, descricao);
                case "Transferência" -> {
                    if (contaDestinoId == null)
                        throw new IllegalArgumentException("Conta destino obrigatória.");
                    if (contaDestinoId.equals(contaOrigemId))
                        throw new IllegalArgumentException("Origem e destino não podem ser iguais.");
                    bancoRoutineService.executarTransferencia(contaOrigemId, contaDestinoId, valor, descricao);
                }
                default -> throw new IllegalArgumentException("Tipo desconhecido: " + tipo);
            }

            redirectAttributes.addFlashAttribute("sucesso", tipo + " realizado(a) com sucesso!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro: " + e.getMessage());
        }
        return "redirect:/transacoes";
    }
}