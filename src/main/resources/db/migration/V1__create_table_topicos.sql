-- Este é o nosso primeiro ficheiro de migração do Flyway.
-- Ele será executado automaticamente pelo Flyway quando a aplicação iniciar.

-- Criação da tabela 'topicos'
CREATE TABLE topicos (
    id BIGINT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL UNIQUE,
    mensagem TEXT NOT NULL,
    data_criacao DATETIME NOT NULL,
    estado VARCHAR(100) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    curso VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
