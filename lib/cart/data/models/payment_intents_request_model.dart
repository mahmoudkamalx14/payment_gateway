class PaymentIntentsRequestModel {
  PaymentIntentsRequestModel({
    required this.amount,
    required this.currency,
  });

  final double amount;
  final String currency;

  factory PaymentIntentsRequestModel.fromJson(Map<String, dynamic> json) {
    return PaymentIntentsRequestModel(
      amount: json["amount"],
      currency: json["currency"],
    );
  }

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "currency": currency,
      };
}
