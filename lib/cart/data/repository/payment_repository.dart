import 'package:payment_getaway/cart/data/models/payment_intents_request_model.dart';
import 'package:payment_getaway/cart/data/models/payment_intents_response_model.dart';
import 'package:payment_getaway/cart/data/services/payment_service.dart';
import 'package:payment_getaway/core/networking/api_result.dart';

class PaymentRepository {
  final PaymentService _paymentService;

  PaymentRepository(this._paymentService);

  Future<ApiResult<PaymentIntentsResponseModel>> createPaymentIntents(
      PaymentIntentsRequestModel paymentIntentsRequestModel) async {
    try {
      final result = await _paymentService.createPaymentIntents(
        'secretKey',
        paymentIntentsRequestModel,
      );

      return ApiResult.success(result);
    } on Exception catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
