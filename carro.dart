import 'dart:io';

class Carro {
  String marca = '';
  String modelo = '';
  String cor = '';
  int _velocidade = 0;

  Carro(this.marca, this.modelo, this.cor, this._velocidade);

  void acelerar() {
    _velocidade += 10;
  }

  //função para ver o parametro privado
  int get buscar_velocidade {
    return _velocidade;
  }

  set alterar_velocidade(int nova_velocidade) {
    if (nova_velocidade < 0) {
      print("valor incorreto , a velocidade não pode ser menor que zero");
    } else {
      _velocidade = nova_velocidade;
    }
  }
}
void main() {
  Carro meuCarro = Carro("Toyota", "Corolla", "Prata", 0);

  print("Marca: ${meuCarro.marca}");
  print("Modelo: ${meuCarro.modelo}");
  print("Cor: ${meuCarro.cor}");
  print("Velocidade atual: ${meuCarro._velocidade} km/h");

  // Acelerando o carro
  meuCarro.acelerar();
  print("Velocidade após acelerar: ${meuCarro._velocidade} km/h");
}
