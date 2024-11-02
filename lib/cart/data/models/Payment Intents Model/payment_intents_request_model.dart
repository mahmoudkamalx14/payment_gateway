class PaymentIntentsRequestModel {
  PaymentIntentsRequestModel({
    required this.customerId,
    required this.amount,
    required this.currency,
  });

  final int amount;
  final String currency;
  final String customerId;

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "currency": currency,
        "customer": customerId,
      };
}
