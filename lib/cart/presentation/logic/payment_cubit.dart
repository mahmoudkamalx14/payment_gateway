import 'dart:developer';

import 'package:payment_getaway/cart/data/models/payment_intents_request_model.dart';
import 'package:payment_getaway/cart/data/repository/payment_stripe_repository.dart';
import 'package:payment_getaway/core/networking/api_result.dart';

import 'payment_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final PaymentStripeRepository _stripeRepository;
  PaymentCubit(this._stripeRepository) : super(PaymentInitial());

  static PaymentCubit get(context) => BlocProvider.of(context);

  void emitStripePaymentStates(int amount) async {
    emit(PaymentStripeLoadingState());

    final respone = await _stripeRepository.executeStripePayment(
      PaymentIntentsRequestModel(
        amount: amount * 100,
        currency: 'USD',
      ),
    );

    if (respone is Success<void>) {
      emit(PaymentStripeSuccessState());
    } else {
      emit(
        PaymentStripeErrorState(
          erroeMessage: 'Failed to complete payment',
        ),
      );
    }
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
