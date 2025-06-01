# 🔐 Spring Boot JWT Auth Template

[![Java](https://img.shields.io/badge/Java-17+-blue)](https://www.java.com)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen)](https://spring.io/projects/spring-boot)
[![Postgres](https://img.shields.io/badge/PostgreSQL-15-blue)](https://www.postgresql.org/)
[![Docker](https://img.shields.io/badge/Docker-%231572B6.svg?logo=docker&logoColor=white)](https://www.docker.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 🔥 Sobre o projeto

Template para um sistema simples de login utilizando **Spring Boot**, **JWT** e **PostgreSQL** via **Docker Compose**.

Inclui autenticação baseada em roles (`ROLE_USER` e `ROLE_ADMIN`), geração de token JWT e um endpoint protegido que permite acesso **somente para administradores**.

---

## 🚀 Tecnologias

- ☕ Java 17+
- 🧠 Spring Boot 3.x
- 🔐 Spring Security + JWT
- 🗄️ PostgreSQL (via Docker)
- 🐳 Docker e Docker Compose
- 🛠️ Makefile para automação de comandos

---

## 📜 Funcionalidades

- Registro de usuários com role (`ROLE_USER` ou `ROLE_ADMIN`)
- Autenticação com JWT
- Proteção de endpoints por role
- Endpoint privado exclusivo para `ROLE_ADMIN`
- Banco PostgreSQL configurado via Docker

---

## ⚙️ Pré-requisitos

- Docker e Docker Compose
- Java 17 ou superior
- Make instalado (`make` funciona no Linux/macOS e no Windows via WSL ou Git Bash)

---

## 🔧 Como rodar o projeto

Utilize o Makefile para executar os comandos:

| Comando       | Descrição                                                        |
|----------------|-------------------------------------------------------------------|
| `make dev-d`   | 🚀 Sobe o projeto no Docker Compose **sem exibir os logs**        |
| `make dev`     | 🚀 Sobe o projeto no Docker Compose **exibindo os logs**          |
| `make stop`    | ⛔ Para e remove os containers Docker                             |
| `make help`    | 📖 Mostra todos os comandos disponíveis                           |
