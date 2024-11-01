import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/cart/presentation/logic/payment_cubit.dart';
import 'package:payment_getaway/cart/presentation/logic/payment_state.dart';
import 'package:payment_getaway/cart/presentation/widgets/pay_methods_list.dart';
import 'package:payment_getaway/core/di/dependency_injection.dart';
import 'package:payment_getaway/core/helper/navigation.dart';
import 'package:payment_getaway/core/routes/routes.dart';
import 'package:payment_getaway/core/widgets/custom_botton.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentCubit>(),
      child: BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {
          if (state is PaymentStripeSuccessState) {
            context.navigateTo(Routes.checkScreen);
          }
          if (state is PaymentStripeErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Error: ffffffffffffffff')),
            );
          }
        },
        builder: (context, state) {
          return Container(
            height: 200.h,
            padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
            child: Column(
              children: [
                const PayMethodsList(),
                const Spacer(),
                CustomBotton(
                  text: 'Continue',
                  onTap: () {
                    PaymentCubit.get(context).emitStripePaymentStates(50);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
