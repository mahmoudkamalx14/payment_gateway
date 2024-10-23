import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/cart/presentation/widgets/pay_methods_list.dart';
import 'package:payment_getaway/core/helper/navigation.dart';
import 'package:payment_getaway/core/helper/space.dart';
import 'package:payment_getaway/core/routes/routes.dart';
import 'package:payment_getaway/core/widgets/custom_appbar.dart';
import 'package:payment_getaway/core/widgets/custom_botton.dart';

class CompletePaymentView extends StatelessWidget {
  const CompletePaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: 'Payment Details', space: 50.w),
            const PayMethodsList(),
            const Spacer(),
            CustomBotton(
              text: 'Pay',
              onTap: () {
                context.navigateTo(Routes.checkScreen);
              },
            ),
            verticalSpace(40),
          ],
        ),
      ),
    );
  }
}
