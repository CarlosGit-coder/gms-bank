package com.gmsbank.controller;

import com.gmsbank.model.Usuarios;
import com.gmsbank.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String roteLogin(){
        return "login";
    }

    @Autowired
    private AuthService authService;

    @PostMapping("/login")
    public String login(@RequestParam String  email, @RequestParam String senha, RedirectAttributes redirectAttributes) {
        Usuarios usuario = authService.autenticar(email, senha);
        if (usuario == null) {
            redirectAttributes.addFlashAttribute("erro", "login invalido");
            return "redirect:/login";
        } else {
            return "redirect:/dashboard";
        }
    }



}
