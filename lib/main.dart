import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getaway/app.dart';
import 'package:payment_getaway/core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey = 'stripePublishableKey';
  runApp(PaymentGateway(appRouter: AppRouter()));
}


 //? 1. Create a Payment Intent (amount , currency)
 //! 2. inititalize the payment sheet
 /// 3. present the payment sheet