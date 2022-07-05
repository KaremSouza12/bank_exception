import 'package:bank/bank.dart' as bank;
import 'Controllers/bank_controller.dart';
import 'Models/acount.dart';

void main(List<String> arguments) {
  BankController bankController = BankController();

  bankController.addAcount(
      id: 'Karem',
      account:
          Account(name: 'Karem de Souza', balance: 400, isAuthenticated: true));

  bankController.addAcount(
      id: 'Lucas',
      account:
          Account(name: 'Lucas Silva', balance: 600, isAuthenticated: true));
  bool result = bankController.MakeTransfer(
      idSender: 'gerente', idReceiver: 'Karem', amount: 1000);
  print(result);
}
