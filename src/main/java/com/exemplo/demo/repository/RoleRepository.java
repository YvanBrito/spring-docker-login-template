package com.exemplo.demo.repository;

import com.exemplo.demo.model.Role;
import com.exemplo.demo.model.Role.ERole;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface RoleRepository extends JpaRepository<Role, Long> {
    Optional<Role> findByName(ERole name);
}
