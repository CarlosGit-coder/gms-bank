package com.gmsbank.service;

import com.gmsbank.model.Usuarios;
import com.gmsbank.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Optional;

@Service
public class AuthService {

    public static String gerarMD5(String senha) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] hash = md.digest(senha.getBytes(StandardCharsets.UTF_8));

            StringBuilder hex = new StringBuilder();

            for (byte b : hash) {
                hex.append(String.format("%02x", b));
            }

            return hex.toString();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Autowired
    private UsuarioRepository usuarioRepository;

    public Usuarios autenticar(String email, String senha) {
        Optional<Usuarios> usuarioOptional = usuarioRepository.findByEmail(email);
        System.out.println("Senha recebida: [" + senha + "]");
        System.out.println("Tamanho: " + senha.length());
        if (usuarioOptional.isEmpty()) {
            return null;
        }

        Usuarios usuario = usuarioOptional.get();
        String hashSenha = gerarMD5(senha);
        String hashBanco = usuario.getSenha_hash().trim().toLowerCase();
        String hashGerado = hashSenha.trim().toLowerCase();

        System.out.println("Hash gerado:  [" + hashGerado + "]");
        System.out.println("Hash no banco:[" + hashBanco + "]");
        System.out.println("Iguais: " + hashGerado.equals(hashBanco));

        if (hashGerado.equals(hashBanco)) {
            return usuario;
        }
        return null;
    }
}
