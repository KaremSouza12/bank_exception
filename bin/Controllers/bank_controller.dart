import '../Models/acount.dart';

class BankController {
  final Map<String, Account> _database = {};

  addAcount({required String id, required Account account}) {
    _database[id] = account;
  }

  bool MakeTransfer(
      {required String idSender,
      required String idReceiver,
      required double amount}) {
    if (!verifyId(idSender)) {
      return false;
    }
    if (!verifyId(idReceiver)) {
      return false;
    }
    Account accountSender = _database[idSender]!;
    Account accountReceiver = _database[idReceiver]!;

    if (!accountSender.isAuthenticated) {
      return false;
    }
    if (accountSender.balance < amount) {
      return false;
    }

    accountSender.balance -= amount;
    accountReceiver.balance += amount;

    return true;
  }

  bool verifyId(String id) {
    return _database.containsKey(id);
  }
}
