import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/core/utils/app_styles.dart';

class RQImage extends StatelessWidget {
  const RQImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 60.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Image.asset(
              'assets/images/RQ.png',
              height: 70.h,
              width: 150.w,
            ),
          ),
          Container(
            width: 103.w,
            height: 62.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.50.w, color: const Color(0xFF34A853)),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Center(
              child: Text(
                'PAID',
                style: AppStyles.style24SemiBold.copyWith(
                  color: const Color(0xFF34A853),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
