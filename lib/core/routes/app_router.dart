import 'package:flutter/material.dart';
import 'package:payment_getaway/cart/presentation/views/cart_view.dart';
import 'package:payment_getaway/cart/presentation/views/complete_payment.dart';
import 'package:payment_getaway/cart/presentation/views/payment_check_view.dart';
import 'package:payment_getaway/core/routes/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final String nameRoute = settings.name!;

    switch (nameRoute) {
      case Routes.cartScreen:
        return MaterialPageRoute(builder: (_) => const CartView());

      case Routes.completePaymentScreen:
        return MaterialPageRoute(builder: (_) => const CompletePaymentView());

      case Routes.checkScreen:
        return MaterialPageRoute(builder: (_) => const PaymentCheckView());
    }
    return null;
  }
}
