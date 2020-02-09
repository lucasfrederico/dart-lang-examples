void main() {
  criarBotao("Botão Sair", botaoCriado, cor: "Preto");

  criarBotao("Botão Câmera", () => {print("Botão criado por func anônima")},
      cor: "Preto");

  criarBotao("Botão Câmera 2", () {
    print("Botão criado por func anônima");
  }, cor: "Preto");
}

void botaoCriado() {
  print("Botão criado!");
}

void criarBotao(String texto, Function criadoFunc,
    {String cor, double largura}) {
  print(texto);
  print(cor ?? "Preto"); // Valor default
  print(largura ?? 10.0); // Valor default
  criadoFunc();
}
