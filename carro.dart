import 'dart:io';

class Carro {
  String marca = '';
  String modelo = '';
  String cor = '';
  int velocidade = 0;

  Carro(this.marca, this.modelo, this.cor, this.velocidade);

  void acelerar() {
    velocidade += 10;
  }
}

void main() {

    Carro meuCarro = Carro("Toyota", "Corolla", "Prata", 0);

  print("Marca: ${meuCarro.marca}");
  print("Modelo: ${meuCarro.modelo}");
  print("Cor: ${meuCarro.cor}");
  print("Velocidade atual: ${meuCarro.velocidade} km/h");

  // Acelerando o carro
  meuCarro.acelerar();
  print("Velocidade após acelerar: ${meuCarro.velocidade} km/h");

}
