import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/core/routes/app_router.dart';
import 'package:payment_getaway/core/routes/routes.dart';

class PaymentGateway extends StatelessWidget {
  const PaymentGateway({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.cartScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
