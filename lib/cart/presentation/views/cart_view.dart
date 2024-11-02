import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/cart/presentation/logic/payment_cubit.dart';
import 'package:payment_getaway/cart/presentation/logic/payment_state.dart';
import 'package:payment_getaway/cart/presentation/widgets/info_cart_order.dart';
import 'package:payment_getaway/cart/presentation/widgets/payment_methods_bottom_sheet.dart';
import 'package:payment_getaway/core/helper/space.dart';
import 'package:payment_getaway/core/widgets/custom_appbar.dart';
import 'package:payment_getaway/core/widgets/custom_botton.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                CustomAppBar(title: 'My Cart', space: 80.w),
                Expanded(
                  child: Image.asset('assets/images/cart_image.png'),
                ),
                verticalSpace(25),
                const InfoCartOrder(),
                verticalSpace(16),
                CustomBotton(
                  text: 'Complete Payment',
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const PaymentMethodsBottomSheet();
                      },
                    );
                  },
                ),
                verticalSpace(40),
              ],
            ),
          ),
        );
      },
    );
  }
}
