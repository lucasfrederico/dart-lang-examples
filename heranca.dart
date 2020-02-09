class Animal {
  String nome;
  double peso;

  Animal(this.nome, this.peso);

  void comer() {
    print("$nome comeu!");
  }

  void fazerSom() {
    print("$nome fez algum som!");
  }
}

class Cachorro extends Animal {
  int fofura;

  Cachorro(String nome, double peso, this.fofura) : super(nome, peso);

  void brincar() {
    fofura += 10;
    print("Fofura do $nome aumentou para $fofura!");
  }
}

class Gato extends Animal {

  Gato(String nome, double peso) : super(nome, peso);

  bool estaAmigavel() => true;
}

void main() {
  Cachorro cachorro = Cachorro("Apolo", 15.0, 1);
  cachorro.fazerSom();
  cachorro.comer();
  cachorro.brincar();

  Gato gato = Gato("Seila", 10.0);
  gato.fazerSom();
  gato.comer();
  print("Está amigável? ${gato.estaAmigavel()}");
}
