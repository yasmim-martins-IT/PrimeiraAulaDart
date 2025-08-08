import 'dart:io';

void main() {
  Map<String, double> produtos = {
    'Cadeira Gamer': 250,
    'Mouse': 55.99,
    'Teclado Mecânico': 230.66,
    'Notebook VAIO Ryzen5': 3800,
  };

  List<String> carrinho = [];
  double total = 0.0;
  String? sair;

  do {
    int contador = 0;
    print("\nEscolha um dos produtos disponíveis:");
    produtos.forEach((nome, preco) {
      contador++;
      print("$contador - $nome : R\$ ${preco.toStringAsFixed(2)}");
    });

    stdout.write("Digite o número do produto: ");
    int? escolha = int.tryParse(stdin.readLineSync()!);

    if (escolha != null && escolha > 0 && escolha <= produtos.length) {
      String nomeProduto = produtos.keys.elementAt(escolha - 1);
      double precoProduto = produtos[nomeProduto]!;
      carrinho.add(nomeProduto);
      total += precoProduto;

      print(" $nomeProduto adicionado ao carrinho.");
    } else {
      print(" Opção inválida.");
      continue;
    }
    

    stdout.write("Deseja continuar escolhendo? (sim/não): ");
    sair = stdin.readLineSync()?.toLowerCase();
  } while (sair == 'sim');

  print("\n--- RESUMO DA COMPRA ---");
  for (var item in carrinho) {
    print("- $item : R\$ ${produtos[item]!.toStringAsFixed(2)}");
  }
  print("TOTAL: R\$ ${total.toStringAsFixed(2)}");

  print(
    "\nEscolha uma forma de pagar a compra:\n"
    "1 - Pagar à vista (10% de desconto)\n"
    "2 - Parcelar no cartão (10% de juros)\n"
    "3 - Fiado (15% de juros)",
  );
  String? choice = stdin.readLineSync();
  int? formaPagamento = int.tryParse(choice ?? '');

  if (formaPagamento == null) {
    print("Escolha inválida.");
    return;
  }

  switch (formaPagamento) {
    case 1:
      double desconto = total * 0.10;
      double valorFinal = total - desconto;
      print("Você pagará no total (à vista): R\$ ${valorFinal.toStringAsFixed(2)}");
      break;

    case 2:
      double juros = total * 0.10;
      double valorFinal = total + juros;

      stdout.write("Quantas parcelas? ");
      int? parcelas = int.tryParse(stdin.readLineSync()!);
      if (parcelas == null || parcelas <= 0) {
        print("Número de parcelas inválido. Usando 1 parcela.");
        parcelas = 1;
      }

      double valorParcela = valorFinal / parcelas;

      print("Você pagará no total: R\$ ${valorFinal.toStringAsFixed(2)}");
      print("Parcelado em $parcelas vezes de R\$ ${valorParcela.toStringAsFixed(2)}");
      break;

    case 3:
      double juros = total * 0.15;
      double valorFinal = total + juros;
      print("Você pagará no fiado um total de R\$ ${valorFinal.toStringAsFixed(2)} na próxima conta.");
      break;

    default:
      print("Escolha inválida.");
  }
}
