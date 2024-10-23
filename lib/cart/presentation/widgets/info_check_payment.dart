import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/cart/presentation/widgets/divider.dart';
import 'package:payment_getaway/cart/presentation/widgets/item_info_check_payment.dart';
import 'package:payment_getaway/core/utils/app_styles.dart';

class InfoCheckPayment extends StatelessWidget {
  const InfoCheckPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        children: [
          const ItemInfoCheckPayment(title: 'Date', result: '01/24/2023'),
          const ItemInfoCheckPayment(title: 'Time', result: '10:15 AM'),
          const ItemInfoCheckPayment(title: 'To', result: 'Sam Louis'),
          const Div(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Text('Total', style: AppStyles.style24SemiBold),
                const Spacer(),
                Text('\$50.97', style: AppStyles.style24SemiBold),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
