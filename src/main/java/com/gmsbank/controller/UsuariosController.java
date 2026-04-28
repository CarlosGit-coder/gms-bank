package com.gmsbank.controller;

import com.gmsbank.model.Perfis;
import com.gmsbank.model.Usuarios;
import com.gmsbank.repository.PerfisRepository;
import com.gmsbank.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UsuariosController {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private PerfisRepository perfisRepository;

    @GetMapping("/usuarios")
    public String listar(Model model) {
        model.addAttribute("todosUsuarios", usuarioRepository.findAll());
        model.addAttribute("todosPerfis", perfisRepository.findAll());
        return "usuarios";
    }

    @PostMapping("/usuarios/cadastrar")
    public String cadastrar(@RequestParam String nome_usuarios,
                            @RequestParam String cpf_usuarios,
                            @RequestParam String email_usuarios,
                            @RequestParam String senha_hash,
                            @RequestParam int perfilId,
                            RedirectAttributes redirectAttributes) {
        try {
            Perfis perfil = perfisRepository.findById(perfilId)
                    .orElseThrow(() -> new IllegalArgumentException("Perfil não encontrado: " + perfilId));

            Usuarios usuario = new Usuarios();
            usuario.setNome_usuarios(nome_usuarios);
            usuario.setCpf_usuarios(cpf_usuarios);
            usuario.setEmail_usuarios(email_usuarios);
            usuario.setSenha_hash(senha_hash); // idealmente: encode com BCrypt antes de salvar
            usuario.setFK_perfil_id(perfil);
            usuario.setAtivo_usuarios(true);

            usuarioRepository.save(usuario);
            redirectAttributes.addFlashAttribute("sucesso", "Usuário cadastrado com sucesso!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro ao cadastrar usuário: " + e.getMessage());
        }
        return "redirect:/usuarios";
    }

    @GetMapping("/usuarios/editar/{id}")
    public String editar(@PathVariable int id, Model model) {
        Usuarios usuario = usuarioRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Usuário não encontrado: " + id));
        model.addAttribute("usuario", usuario);
        model.addAttribute("todosPerfis", perfisRepository.findAll());
        return "editarUsuario";
    }

    @PostMapping("/usuarios/editar/{id}")
    public String salvarEdicao(@PathVariable int id, @RequestParam String nome_usuarios, @RequestParam String cpf_usuarios, @RequestParam String email_usuarios, @RequestParam int perfilId,  RedirectAttributes redirectAttributes) {
        try {
            Usuarios usuario = usuarioRepository.findById(id)
                    .orElseThrow(() -> new IllegalArgumentException("Usuário não encontrado: " + id));

            Perfis perfil = perfisRepository.findById(perfilId)
                    .orElseThrow(() -> new IllegalArgumentException("Perfil não encontrado: " + perfilId));

            usuario.setNome_usuarios(nome_usuarios);
            usuario.setCpf_usuarios(cpf_usuarios);
            usuario.setEmail_usuarios(email_usuarios);
            usuario.setFK_perfil_id(perfil);

            usuarioRepository.save(usuario);
            redirectAttributes.addFlashAttribute("sucesso", "Usuário atualizado com sucesso!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro ao atualizar usuário: " + e.getMessage());
        }
        return "redirect:/usuarios";
    }

    @PostMapping("/usuarios/deletar/{id}")
    public String deletar(@PathVariable int id,
                          RedirectAttributes redirectAttributes) {
        try {
            usuarioRepository.deleteById(id);
            redirectAttributes.addFlashAttribute("sucesso", "Usuário excluído com sucesso!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro ao excluir usuário: " + e.getMessage());
        }
        return "redirect:/usuarios";
    }
}