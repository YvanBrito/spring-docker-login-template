package com.exemplo.demo.service;

import com.exemplo.demo.model.*;
import com.exemplo.demo.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final PasswordEncoder passwordEncoder;

    public User registerUser(String username, String password, String roleStr) throws Exception {
        if (userRepository.existsByUsername(username)) {
            throw new Exception("Usuário já existe");
        }

        Role.ERole roleName;
        if ("admin".equalsIgnoreCase(roleStr)) {
            roleName = Role.ERole.ROLE_ADMIN;
        } else {
            roleName = Role.ERole.ROLE_USER;
        }
        System.out.println(roleName);
        Role role = roleRepository.findByName(roleName)
                .orElseThrow(() -> new Exception("Role não encontrada"));

        User user = User.builder()
                .username(username)
                .password(passwordEncoder.encode(password))
                .roles(new HashSet<>())
                .build();

        user.getRoles().add(role);

        return userRepository.save(user);
    }
}
