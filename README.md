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



api/
└── api/
├── src/main/java/med/voll/api
│ ├── controller/ # Controllers REST
│ ├── domain/ # Entities, DTOs, Regras de Negócio
│ ├── infra/ # Security, Tokens, Exceptions
│ └── ApiApplication.java
├── src/main/resources
│ ├── application.properties
│ └── db/migration/ # Scripts Flyway
├── src/test/java # Testes automatizados
└── pom.xml


---

## 🧪 Testes Automatizados

O projeto inclui testes para:

- Controllers  
- Repositórios  
- Regras de validação  
- Teste de integração da API  

Arquivos como:

- `ConsultaControllerTest`
- `MedicoControllerTest`
- `MedicoRepositoryTest`

---

## 🔧 Como Rodar o Projeto

### 1. Clonar o repositório
```bash
git clone https://github.com/RodrigoAndrade-cpu/Api-Rest-Consultas.git
cd Api-Rest-Consultas/api

2. Configurar o banco no application.properties

Exemplo:

spring.datasource.url=jdbc:mysql://localhost/vollmed_api
spring.datasource.username=root
spring.datasource.password=1234
spring.jpa.hibernate.ddl-auto=none
spring.flyway.enabled=true

3. Rodar o projeto
mvn spring-boot:run

🔑 Autenticação
Login
POST /login


Body:

{
  "login": "usuario",
  "senha": "123456"
}


Retorna:

{
  "token": "jwt-gerado"
}


Usar em todas as rotas:

Authorization: Bearer <token>

📚 Endpoints Principais
🧑‍⚕️ Médicos
Método	Endpoint	Descrição
POST	/medicos	Cadastrar
GET	/medicos	Listar
PUT	/medicos	Atualizar
DELETE	/medicos/{id}	Excluir
👤 Pacientes
Método	Endpoint	Descrição
POST	/pacientes	Cadastrar
GET	/pacientes	Listar
PUT	/pacientes	Atualizar
DELETE	/pacientes/{id}	Excluir
📅 Consultas
Método	Endpoint	Descrição
POST	/consultas	Agendar
DELETE	/consultas	Cancelar
🛠 Banco de Dados (Flyway)

Scripts na pasta:

src/main/resources/db/migration/


Cada arquivo cria ou altera tabelas como:

medicos

pacientes

consultas

usuarios

📄 Licença

Projeto de estudo. Livre para uso e modificação.

✉️ Contato

Criado por Rodrigo Andrade
GitHub: https://github.com/RodrigoAndrade-cpu

