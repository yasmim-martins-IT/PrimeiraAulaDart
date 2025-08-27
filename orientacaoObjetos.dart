import 'dart:io';

class Humano {
  //Classe humano

  //caracteristica do ser humano

  String nome = '';
  int idade = 0;
  String genero = '';
  double altura = 0.0;
  double peso = 0.0;
  String etnia = '';

  //metodo construtor que facilita a criação das instancias
  Humano(
    this.nome,
    this.idade,
    this.genero,
    this.altura,
    this.etnia,
    this.peso,
  );


}



void main() {
  //criando instancias da classe humano
Humano Vinicius = Humano(
  "Vinicius de Almeida Alves",
  20,
  "masculino",
  2.50,
  "pardo",
  200,
);

Humano Mariana = Humano(
  "Mariana Rodrigues Santos",
  22,
  "feminino",
  1.68,
  "amarela",
  58,
);

Humano Rafael = Humano(
  "Rafael Gomes da Silva",
  28,
  "masculino",
  1.90,
  "pardo",
  90,
);
}
