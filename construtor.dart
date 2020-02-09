class Pessoa {
  String nome;
  int _idade;
  double _altura;

  Pessoa(this.nome, this._idade, this._altura);

  int get idade {
    return _idade;
  }

  // Utilizar o setter somente quando precisa proteger a definição com alguma  condição
  set altura(double altura) {
    if (altura > 0.0 && altura < 3.0) {
      _altura = altura;
    }
  }
}
