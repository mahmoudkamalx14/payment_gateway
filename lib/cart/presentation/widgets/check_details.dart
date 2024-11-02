import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/cart/presentation/widgets/info_check_payment.dart';
import 'package:payment_getaway/cart/presentation/widgets/print_check.dart';
import 'package:payment_getaway/cart/presentation/widgets/rq_image.dart';
import 'package:payment_getaway/core/helper/navigation.dart';
import 'package:payment_getaway/core/helper/space.dart';
import 'package:payment_getaway/core/routes/routes.dart';
import 'package:payment_getaway/core/utils/app_styles.dart';

class CheckDetails extends StatelessWidget {
  const CheckDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PrintCheck(),
        verticalSpace(16),
        Text('Thank you!', style: AppStyles.style25Meduim),
        verticalSpace(2),
        Text(
          'Your transaction was successful',
          style: AppStyles.style20Regular,
        ),
        verticalSpace(42),
        const InfoCheckPayment(),
        verticalSpace(30),
        GestureDetector(
          onTap: () {
            context.navigateToReplacement(Routes.cartScreen);
          },
          child: Container(
            width: 305.w,
            height: 73.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Center(
              child: Text(
                'Go To Home',
                style: AppStyles.style24SemiBold.copyWith(
                  color: const Color(0xFF34A853),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        const RQImage(),
      ],
    );
  }
}
