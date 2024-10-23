import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/cart/presentation/widgets/pay_methods_list.dart';
import 'package:payment_getaway/core/helper/navigation.dart';
import 'package:payment_getaway/core/routes/routes.dart';
import 'package:payment_getaway/core/widgets/custom_botton.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
      child: Column(
        children: [
          const PayMethodsList(),
          const Spacer(),
          CustomBotton(
            text: 'Continue',
            onTap: () {
              context.navigateTo(Routes.completePaymentScreen);
            },
          ),
        ],
      ),
    );
  }
}
