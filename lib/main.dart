import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getaway/app.dart';
import 'package:payment_getaway/core/di/dependency_injection.dart';
import 'package:payment_getaway/core/routes/app_router.dart';

import 'cart/data/services/payment_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupGetIt();

  Stripe.publishableKey = PaymentConstants.publishableKey;
  runApp(PaymentGateway(appRouter: AppRouter()));
}

// 1. create payment intent on the server (amount , currency)
// 2. initialize the payment sheet (paymentIntentClientSecret)
// 3. present the payment sheet