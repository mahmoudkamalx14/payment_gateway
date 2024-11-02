// ignore_for_file: void_checks

import 'dart:developer';

import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getaway/cart/data/models/Ephemeral%20Key%20Model/ephemeral_key_request_model.dart';
import 'package:payment_getaway/cart/data/models/Ephemeral%20Key%20Model/ephemeral_key_response_model.dart';
import 'package:payment_getaway/cart/data/models/Init%20Payment%20Sheet%20Model/init_payment_sheet_model.dart';
import 'package:payment_getaway/cart/data/models/Payment%20Intents%20Model/payment_intents_request_model.dart';
import 'package:payment_getaway/cart/data/models/Payment%20Intents%20Model/payment_intents_response_model.dart';
import 'package:payment_getaway/cart/data/services/constants/payment_constants.dart';
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

  Future<ApiResult<EphemeralKeyResponseModel>> _createEphemeralKey(
      EphemeralKeyRequestModel ephemeralKeyRequestModel) async {
    try {
      final result = await _paymentService.createEphemeralKey(
        PaymentConstants.secretKey,
        PaymentConstants.stripeContentType,
        PaymentConstants.stripeVersion,
        ephemeralKeyRequestModel,
      );
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<void> _initPaymentSheet(
      InitPaymentSheetModel initPaymentSheetModel) async {
    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          merchantDisplayName: 'Marketi',
          paymentIntentClientSecret: initPaymentSheetModel.clientSecret,
          customerId: PaymentConstants.customerId,
          customerEphemeralKeySecret: initPaymentSheetModel.ephemeralKeySecret,
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

    final ephemeralKeyModel =
        await _createEphemeralKey(EphemeralKeyRequestModel(
      customer: paymentIntentsRequestModel.customerId,
    ));

    try {
      if (paymentIntentsModel is Success<PaymentIntentsResponseModel> &&
          ephemeralKeyModel is Success<EphemeralKeyResponseModel>) {
        final clientSecret = paymentIntentsModel.data.clientSecret;

        await _initPaymentSheet(InitPaymentSheetModel(
          clientSecret: clientSecret!,
          customerId: paymentIntentsRequestModel.customerId,
          ephemeralKeySecret: ephemeralKeyModel.data.secret!,
        ));

        await _displayPaymentSheet();
        return ApiResult.success('Payment successful!');
      } else {
        return ApiResult.failure('Failed to create payment Sheet');
      }
    } on StripeException catch (e) {
      return ApiResult.failure(e.error.code == FailureCode.Canceled
          ? "Payment was canceled by the user."
          : "An error occurred: ${e.error.localizedMessage}");
    } catch (e) {
      return ApiResult.failure("An unexpected error occurred: $e");
    }
  }
}
