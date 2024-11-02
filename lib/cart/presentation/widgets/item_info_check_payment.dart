import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/core/utils/app_styles.dart';

class ItemInfoCheckPayment extends StatelessWidget {
  const ItemInfoCheckPayment({
    super.key,
    required this.title,
    required this.result,
  });

  final String title;
  final String result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        children: [
          Text(title, style: AppStyles.style18Regular),
          const Spacer(),
          Text(result, style: AppStyles.style18Regular),
        ],
      ),
    );
  }
}
