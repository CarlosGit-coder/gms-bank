package com.gmsbank.service;

import com.gmsbank.model.Usuarios;
import com.gmsbank.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.MessageDigest;
import java.util.Optional;

@Service
public class AuthService {

    public static String gerarMD5(String senha) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] hash = md.digest(senha.getBytes());

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
        Optional<Usuarios> usuarioOptional = usuarioRepository.findByEmail_usuarios(email);
        if (usuarioOptional.isEmpty()) {
            return null;
        } else {
            String hex = gerarMD5(senha);

            if ( usuarioOptional.get().getSenha_hash().equals(hex)) {
                return usuarioOptional.get();
            } else {
                return null;
            }

        }
    }
}
