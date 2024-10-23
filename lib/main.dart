import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getaway/app.dart';
import 'package:payment_getaway/core/routes/app_router.dart';

void main() async {
  // Stripe.publishableKey = stripePublishableKey;

  runApp(PaymentGateway(appRouter: AppRouter()));
}
