import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/core/helper/navigation.dart';
import 'package:payment_getaway/core/helper/space.dart';
import 'package:payment_getaway/core/utils/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.space,
  });

  final String title;
  final double space;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Container(
                height: 48.h,
                width: 48.w,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.5.w, color: Colors.grey),
                        borderRadius: BorderRadius.circular(40))),
                child: const Center(
                  child: Icon(Icons.arrow_back_ios_new),
                )),
          ),
          horizontalSpace(space),
          Center(
            child: Text(title, style: AppStyles.style25Meduim),
          ),
        ],
      ),
    );
  }
}
