import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/cart/presentation/widgets/check_details.dart';

class PaymentCheckView extends StatelessWidget {
  const PaymentCheckView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                child: Center(
                  child: Container(
                    width: 350.w,
                    height: 700.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const CheckDetails(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
