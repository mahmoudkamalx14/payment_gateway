import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/core/utils/app_styles.dart';

class ItemInfoCartOrder extends StatelessWidget {
  const ItemInfoCartOrder({
    super.key,
    required this.price,
    required this.title,
  });

  final String price;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.5.h),
      child: Row(
        children: [
          Text(title, style: AppStyles.style18Regular),
          const Spacer(),
          Text('\$$price', style: AppStyles.style18Regular),
        ],
      ),
    );
  }
}
