abstract class PaymentState {}

final class PaymentInitial extends PaymentState {}

final class PaymentStripeLoadingState extends PaymentState {}

final class PaymentStripeSuccessState extends PaymentState {}

final class PaymentStripeErrorState extends PaymentState {
  final String erroeMessage;

  PaymentStripeErrorState({required this.erroeMessage});
}
