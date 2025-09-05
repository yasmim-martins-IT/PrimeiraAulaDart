import 'dart:io';

class Animal {
  String nome = '';
  int idade = 0;

  Animal(this.nome, this.idade);
}

class Cachorro extends Animal {
  String? raca; 

  Cachorro(String nome, int idade, {this.raca}) : super(nome, idade);

  void fazerSom() {
    print("au au");
  }
}

class Gato extends Animal {
  String? cor; 

  Gato(String nome, int idade, {this.cor}) : super(nome, idade);

  void fazerSom() {
    print("miau!");
  }
}
void main() {

  Cachorro cachorro = Cachorro("Rex", 3, raca: "Labrador");
  Gato gato = Gato("Mimi", 2, cor: "Preto");


  cachorro.fazerSom();
  print("Cachorro: ${cachorro.nome}, Idade: ${cachorro.idade}, Raça: ${cachorro.raca}");

  gato.fazerSom();
  print("Gato: ${gato.nome}, Idade: ${gato.idade}, Cor: ${gato.cor}");

  
}
