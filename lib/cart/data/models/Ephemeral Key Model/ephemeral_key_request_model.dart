class EphemeralKeyRequestModel {
  EphemeralKeyRequestModel({required this.customer});

  final String customer;

  Map<String, dynamic> toJson() => {
        "customer": customer,
      };
}
