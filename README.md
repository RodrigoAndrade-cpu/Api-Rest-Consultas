# 🏥 API Rest de Consultas Médicas

Uma API REST completa para gerenciamento de **consultas médicas**, **médicos**, **pacientes** e **agendamentos**, desenvolvida em **Java + Spring Boot** seguindo boas práticas de arquitetura, segurança, validação e organização de código.

Este projeto segue a arquitetura ensinada no curso da Alura, mas com melhorias, testes automatizados e organização profissional.

---

## 🚀 Tecnologias Utilizadas

- **Java 17**
- **Spring Boot**
  - Spring Web
  - Spring Data JPA
  - Spring Security (JWT)
  - Validation
- **Flyway** (versionamento de banco de dados)
- **MySQL / H2 (testes)**
- **Lombok**
- **Maven**
- **JPA/Hibernate**

---

## 📌 Funcionalidades

### 👨‍⚕️ Médicos
- Cadastro de médico
- Listagem paginada
- Atualização de dados
- Exclusão lógica (inativação)

### 🧑‍🦰 Pacientes
- Cadastro de paciente
- Listagem paginada
- Atualização de dados
- Exclusão lógica

### 📅 Consultas
- Agendar consulta
- Cancelar consulta
- Regras de validação:
  - Médico disponível no horário
  - Paciente sem outra consulta no dia
  - Antecedência mínima para agendamento
  - Especialidade obrigatória quando o médico não for informado

### 🔐 Autenticação
- Login com JWT
- Filtro de segurança
- Controle de acesso nas rotas

---

## 🗂 Estrutura do Projeto

