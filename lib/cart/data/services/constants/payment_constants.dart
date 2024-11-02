import 'package:payment_getaway/core/utils/my_shared_keys.dart';

class PaymentConstants {
  static const String publishableKey = MySharedKeys.publishableKey;
  static const String secretKey = MySharedKeys.secretKey;
  static const customerId = MySharedKeys.customerId;

  // Base Url
  static const String stripeBaseUrl = 'https://api.stripe.com/v1/';

  // End Points
  static const String createCustomer = 'customers';
  static const String ephemeralKeys = 'ephemeral_keys';
  static const String paymentIntents = 'payment_intents';

  // Headers EEnd Points
  static const String stripeContentType = 'application/x-www-form-urlencoded';
  static const String stripeVersion = '2024-06-20';
}
