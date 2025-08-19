package br.com.alura.challenge.forumhub.topico;

import jakarta.validation.constraints.NotBlank;


public record DadosAtualizacaoTopico(
        String titulo,
        String mensagem
) {
}
