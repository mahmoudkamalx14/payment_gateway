import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/cart/presentation/widgets/divider.dart';
import 'package:payment_getaway/cart/presentation/widgets/item_info_cart_order.dart';
import 'package:payment_getaway/core/utils/app_styles.dart';

class InfoCartOrder extends StatelessWidget {
  const InfoCartOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ItemInfoCartOrder(price: '42.97', title: 'Order Subtotal'),
        const ItemInfoCartOrder(price: '0', title: 'Discount'),
        const ItemInfoCartOrder(price: '8', title: 'Shipping'),
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
    );
  }
}
