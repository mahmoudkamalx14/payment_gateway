import 'package:dio/dio.dart';
import 'package:payment_getaway/cart/data/models/Ephemeral%20Key%20Model/ephemeral_key_request_model.dart';
import 'package:payment_getaway/cart/data/models/Ephemeral%20Key%20Model/ephemeral_key_response_model.dart';
import 'package:payment_getaway/cart/data/models/Payment%20Intents%20Model/payment_intents_request_model.dart';
import 'package:payment_getaway/cart/data/models/Payment%20Intents%20Model/payment_intents_response_model.dart';
import 'package:payment_getaway/cart/data/services/constants/payment_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'payment_service.g.dart';

@RestApi(baseUrl: PaymentConstants.stripeBaseUrl)
abstract class PaymentService {
  factory PaymentService(Dio dio, {String baseUrl}) = _PaymentService;

  @POST(PaymentConstants.paymentIntents)
  Future<PaymentIntentsResponseModel> createPaymentIntents(
    @Header('Authorization') String secretKey,
    @Header('Content-Type') String stripeContentType,
    @Body() PaymentIntentsRequestModel paymentIntentsRequestModel,
  );

  @POST(PaymentConstants.ephemeralKeys)
  Future<EphemeralKeyResponseModel> createEphemeralKey(
    @Header('Authorization') String secretKey,
    @Header('Content-Type') String stripeContentType,
    @Header('Stripe-Version') String stripeVersion,
    @Body() EphemeralKeyRequestModel ephemeralKeyRequestModel,
  );
}
