class SenderIdInvalidException implements Exception {
  static const String report = "SenderIdInvalidException";
  String idSender;
  SenderIdInvalidException({required this.idSender});

  @override
  String toString() {
    return "$report\n Id Sender: $idSender";
  }
}

class ReceiverIdInvalidException implements Exception {
  static const String report = "SenderIdInvalidException";
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString() {
    return "$report\n Id Sender: $idReceiver";
  }
}

class SenderNotAuthenticatedException implements Exception {
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});

  static const String report = "SenderNotAuthenticatedException";

  @override
  String toString() {
    return "$report\n Id Sender: $idSender";
  }
}

class SenderBalanceLowerthanAmountException implements Exception {
  String idSender;
  double senderBalance;
  double amount;
  SenderBalanceLowerthanAmountException(
      {required this.idSender,
      required this.senderBalance,
      required this.amount});

  static const String report = "SenderBalanceLowerthanAmountException";

  @override
  String toString() {
    return "$report\n Id Sender: $idSender\n$senderBalance\n$amount";
  }
}

class ReceiverNotAuthenticatedException implements Exception {
  String idReceiver;
  ReceiverNotAuthenticatedException({required this.idReceiver});

  static const String report = "SenderNotAuthenticatedException";

  @override
  String toString() {
    return "$report\n Id Sender: $idReceiver";
  }
}
