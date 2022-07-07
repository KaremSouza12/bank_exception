import 'package:bank/bank.dart' as bank;
import 'Controllers/bank_controller.dart';
import 'Exception/bank_controller_exception.dart';
import 'Models/acount.dart';

void main(List<String> arguments) {
  BankController bankController = BankController();

  Account accountTeste = Account(name: '', balance: 800, isAuthenticated: true);

  bankController.addAcount(
      id: 'Karem',
      account: Account(
          name: 'Karem de Souza', balance: 400, isAuthenticated: false));

  bankController.addAcount(
      id: 'Lucas',
      account:
          Account(name: 'Lucas Silva', balance: 600, isAuthenticated: true));
  try {
    bool result = bankController.makeTransfer(
        idSender: "Lucas", idReceiver: 'Karem', amount: 200);
    if (result) {
      print('Transação concluída');
    }
  } on SenderIdInvalidException catch (e) {
    print(e);
  } on ReceiverIdInvalidException catch (e) {
    print(e);
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
  } on SenderBalanceLowerthanAmountException catch (e) {
    print(e);
  } on ReceiverNotAuthenticatedException catch (e) {
    print(e);
  } on Exception {
    print('Algo deu errado');
  }
}
