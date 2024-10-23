import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PayMethodImage extends StatelessWidget {
  const PayMethodImage({
    super.key,
    required this.image,
    required this.isActive,
  });

  final String image;

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 103.w,
      height: 62.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.50.w,
            color: isActive
                ? const Color(0xFF34A853)
                : Colors.black.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: SvgPicture.asset(image),
      ),
    );
  }
}
