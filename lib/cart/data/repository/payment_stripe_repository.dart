import 'dart:developer';

import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getaway/cart/data/models/payment_intents_request_model.dart';
import 'package:payment_getaway/cart/data/models/payment_intents_response_model.dart';
import 'package:payment_getaway/cart/data/services/payment_constants.dart';
import 'package:payment_getaway/cart/data/services/payment_service.dart';
import 'package:payment_getaway/core/networking/api_result.dart';

class PaymentStripeRepository {
  final PaymentService _paymentService;

  PaymentStripeRepository(this._paymentService);

  Future<ApiResult<PaymentIntentsResponseModel>> _createPaymentIntents(
      PaymentIntentsRequestModel paymentIntentsRequestModel) async {
    try {
      final result = await _paymentService.createPaymentIntents(
        PaymentConstants.secretKey,
        PaymentConstants.stripeContentType,
        paymentIntentsRequestModel,
      );
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<void> _initPaymentSheet(
      {required String paymentIntentClientSecret}) async {
    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          merchantDisplayName: 'Marketi',
          paymentIntentClientSecret: paymentIntentClientSecret,
        ),
      );
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<void> _displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<ApiResult<void>> executeStripePayment(
      PaymentIntentsRequestModel paymentIntentsRequestModel) async {
    final paymentIntentsModel =
        await _createPaymentIntents(paymentIntentsRequestModel);

    if (paymentIntentsModel is Success<PaymentIntentsResponseModel>) {
      final clientSecret = paymentIntentsModel.data.clientSecret;

      await _initPaymentSheet(
        paymentIntentClientSecret: clientSecret!,
      );

      final paymentSheet = await _displayPaymentSheet();
      return ApiResult.success(paymentSheet);
    } else {
      return ApiResult.failure('Failed to create payment intent');
    }
  }
}
