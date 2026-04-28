package com.gmsbank.controller;

import com.gmsbank.model.Contas;
import com.gmsbank.model.TiposTransacoes;
import com.gmsbank.model.Transacoes;
import com.gmsbank.repository.ContasRepository;
import com.gmsbank.repository.TiposTransacoesRepository;
import com.gmsbank.repository.TransacoesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Date;
import java.util.List;

@Controller
public class TransacaoController {

    @Autowired
    private TransacoesRepository transacoesRepository;

    @Autowired
    private ContasRepository contasRepository;

    @Autowired
    private TiposTransacoesRepository tiposTransacoesRepository;

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
                       @RequestParam double valor,
                       @RequestParam(required = false) String descricao,
                       RedirectAttributes redirectAttributes) {
        try {
            if (valor <= 0) {
                throw new IllegalArgumentException("O valor da transação deve ser positivo.");
            }

            Contas contaOrigem = contasRepository.findById(contaOrigemId)
                    .orElseThrow(() -> new IllegalArgumentException("Conta de origem não encontrada."));

            List<TiposTransacoes> tipos = tiposTransacoesRepository.findAll();
            TiposTransacoes tipoTransacao = tipos.stream()
                    .filter(t -> t.getNome_tipos_transacao().equalsIgnoreCase(tipo))
                    .findFirst()
                    .orElseThrow(() -> new IllegalArgumentException("Tipo de transação inválido: " + tipo));

            Transacoes transacao = new Transacoes();
            transacao.setFK_id_tipos_transacao(tipoTransacao);
            transacao.setFK_id_conta_origem(contaOrigem);
            transacao.setValor_transacoes(valor);
            transacao.setDescricao_transacoes(descricao);
            transacao.setRealizado_em_transacoes(new Date());

            switch (tipo) {
                case "Depósito"      -> processarDeposito(transacao, contaOrigem, valor);
                case "Saque"         -> processarSaque(transacao, contaOrigem, valor);
                case "Transferência" -> {
                    if (contaDestinoId == null) {
                        throw new IllegalArgumentException("Conta destino é obrigatória para transferência.");
                    }
                    if (contaDestinoId.equals(contaOrigemId)) {
                        throw new IllegalArgumentException("Conta de origem e destino não podem ser iguais.");
                    }
                    Contas contaDestino = contasRepository.findById(contaDestinoId)
                            .orElseThrow(() -> new IllegalArgumentException("Conta destino não encontrada."));
                    processarTransferencia(transacao, contaOrigem, contaDestino, valor);
                }
                default -> throw new IllegalArgumentException("Tipo desconhecido: " + tipo);
            }

            redirectAttributes.addFlashAttribute("sucesso", tipo + " realizado(a) com sucesso!");

        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro na transação: " + e.getMessage());
        }

        return "redirect:/transacoes";
    }

    private void processarDeposito(Transacoes transacao, Contas conta, double valor) {
        conta.setSaldo_contas(conta.getSaldo_contas() + valor);
        contasRepository.save(conta);

        transacao.setSaldo_apos_transacoes(conta.getSaldo_contas());
        transacoesRepository.save(transacao);
    }

    private void processarSaque(Transacoes transacao, Contas conta, double valor) {
        double disponivel = conta.getSaldo_contas() + conta.getLimite_contas();
        if (disponivel < valor) {
            throw new IllegalStateException(
                    String.format("Saldo insuficiente. Disponível: R$ %.2f", disponivel));
        }
        conta.setSaldo_contas(conta.getSaldo_contas() - valor);
        contasRepository.save(conta);

        transacao.setSaldo_apos_transacoes(conta.getSaldo_contas());
        transacoesRepository.save(transacao);
    }


        private void processarTransferencia(Transacoes transacao, Contas origem, Contas destino, double valor) {
        double disponivel = origem.getSaldo_contas() + origem.getLimite_contas();
        if (disponivel < valor) {
            throw new IllegalStateException(
                    String.format("Saldo insuficiente na origem. Disponível: R$ %.2f", disponivel));
        }

        origem.setSaldo_contas(origem.getSaldo_contas() - valor);
        contasRepository.save(origem);

        destino.setSaldo_contas(destino.getSaldo_contas() + valor);
        contasRepository.save(destino);

        transacao.setFK_id_conta_destino(destino);
        transacao.setSaldo_apos_transacoes(origem.getSaldo_contas());
        transacoesRepository.save(transacao);
    }
}