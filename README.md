# 📚 API FórumHub  

## 📖 Sobre o Projeto  
**FórumHub** é uma **API REST** desenvolvida como parte do **Challenge ONE - Java - Back-end** da Oracle Next Education em parceria com a Alura.  

O projeto simula o **back-end de um fórum de discussões**, permitindo que utilizadores autenticados criem, consultem, atualizem e apaguem tópicos.  

A API foi construída seguindo as melhores práticas do modelo **REST**, com um foco especial em **validações de negócio** e **segurança**, utilizando um sistema de autenticação e autorização baseado em **tokens JWT**.  

---

## ✨ Funcionalidades  
A API implementa um **CRUD** (*Create, Read, Update, Delete*) completo para a gestão de tópicos:  

### 🔑 Autenticação  
- **POST** `/login`: Permite que um utilizador se autentique e receba um token JWT para aceder aos endpoints protegidos.  

### 📌 Tópicos  
- **POST** `/topicos`: Cria um novo tópico (**requer autenticação**).  
- **GET** `/topicos`: Lista todos os tópicos de forma paginada (**requer autenticação**).  
- **GET** `/topicos/{id}`: Detalha um tópico específico pelo seu ID (**requer autenticação**).  
- **PUT** `/topicos/{id}`: Atualiza um tópico existente (**requer autenticação**).  
- **DELETE** `/topicos/{id}`: Apaga um tópico existente (**requer autenticação**).  

---

## 🛠️ Tecnologias Utilizadas  
- **Java 17**: Linguagem principal do projeto.  
- **Spring Boot 3**: Framework para criação da API, gestão de dependências e auto-configuração.  
- **Spring Security**: Para implementação do sistema de autenticação e autorização.  
- **Tokens JWT (Java JWT)**: Para a geração e validação de tokens de acesso *stateless*.  
- **Spring Data JPA**: Para a persistência e consulta de dados no banco de dados.  
- **MySQL**: Banco de dados relacional utilizado para armazenar os utilizadores e tópicos.  
- **Flyway**: Ferramenta para controlo de versionamento da base de dados (*migrations*).  
- **Lombok**: Para reduzir o código boilerplate nas classes de modelo e DTOs.  
- **Bean Validation**: Para as validações dos dados de entrada na API.  
- **Maven**: Ferramenta para gestão de dependências e build do projeto.  

---

## 🏗️ Estrutura e Arquitetura  

O projeto foi organizado em pacotes para separar as responsabilidades:  

- **controller**: Contém as classes que expõem os endpoints da API (`TopicoController`, `AutenticacaoController`).  
- **topico / usuario**: Pacotes que contêm as entidades JPA, os DTOs (*Data Transfer Objects*) e os Repositórios de cada domínio.  
- **infra/security**: Contém todas as classes relacionadas à segurança, como a configuração do Spring Security, o serviço de token e o filtro de autenticação.  

---

## 📋 Regras de Negócio Implementadas  
- Todos os campos para a criação de um tópico são obrigatórios.  
- Não é permitido o cadastro de tópicos duplicados (mesmo título e mensagem).  
- Todos os endpoints, com exceção do `/login`, são protegidos e exigem um token JWT válido no cabeçalho de autorização.  

---

## 🚀 Como Executar  

### 🔧 Pré-requisitos  
- **Java JDK 17** ou superior.  
- **Maven 4.0** ou superior.  
- **MySQL 8** ou superior, com uma base de dados criada chamada `forumhub`.  

### ⚙️ Configuração  
1. Clone o repositório.  
2. No ficheiro `src/main/resources/application.properties`, configure a **URL** da sua base de dados, o seu **utilizador** e a sua **senha** do MySQL.  
3. No mesmo ficheiro, defina uma **chave secreta** para a propriedade `api.security.token.secret`.  

### ▶️ Execução  
1. Abra o projeto na sua IDE (ex: IntelliJ).  
2. Rode a classe `ForumhubApplication.java`.  
   - A aplicação irá iniciar e o **Flyway** irá criar automaticamente as tabelas `usuarios` e `topicos` na sua base de dados.  

---

## 🧪 Testando a API (com Postman / Insomnia)  

1. Crie um utilizador de teste diretamente na base de dados.  
2. Faça um pedido **POST** para:  http://localhost:8080/login com o **login** e a **senha** do utilizador para obter um token JWT.  
3. Para aceder aos outros endpoints, adicione um cabeçalho (**Header**) `Authorization` ao seu pedido com o valor:


---

## 👨‍💻 Autor  
João Vítor C. Rocha 

🔗 [LinkedIn](https://www.linkedin.com/in/joao-vitor-carlos-da-rocha/)  
🐙 [GitHub](https://github.com/JOVI-CR)  


