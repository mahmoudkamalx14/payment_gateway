import 'package:flutter/material.dart';
import 'package:payment_getaway/app.dart';
import 'package:payment_getaway/core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(PaymentGateway(appRouter: AppRouter()));
}
