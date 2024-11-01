import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_getaway/cart/presentation/logic/payment_cubit.dart';
import 'package:payment_getaway/cart/presentation/views/cart_view.dart';
import 'package:payment_getaway/cart/presentation/views/payment_check_view.dart';
import 'package:payment_getaway/core/di/dependency_injection.dart';
import 'package:payment_getaway/core/routes/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final String nameRoute = settings.name!;

    switch (nameRoute) {
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<PaymentCubit>(),
            child: const CartView(),
          ),
        );

      // case Routes.completePaymentScreen:
      //   return MaterialPageRoute(builder: (_) => const CompletePaymentView());

      case Routes.checkScreen:
        return MaterialPageRoute(builder: (_) => const PaymentCheckView());
    }
    return null;
  }
}
