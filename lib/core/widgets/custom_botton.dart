import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/core/utils/app_styles.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.text,
    this.onTap,
    this.isLoading,
  });

  final String text;
  final bool? isLoading;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 73.h,
          decoration: ShapeDecoration(
            color: const Color(0xFF34A853),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Center(
            child: isLoading == true
                ? const CircularProgressIndicator(color: Colors.cyan)
                : Text(
                    text,
                    style: AppStyles.style22Meduim,
                  ),
          ),
        ),
      ),
    );
  }
}
