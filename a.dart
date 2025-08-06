import 'dart:io';

void main() {
  String? forma;

  do {
    print('escolha uma forma de pagamento  \n a-pix \n b-cartao');
    forma = stdin.readLineSync();
  } while (forma != 'a' && forma != 'b'); 


  ;
}
