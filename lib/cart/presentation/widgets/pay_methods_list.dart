// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getaway/cart/presentation/widgets/pay_method_image.dart';

class PayMethodsList extends StatefulWidget {
  const PayMethodsList({super.key});

  @override
  State<PayMethodsList> createState() => _PayMethodsListState();
}

class _PayMethodsListState extends State<PayMethodsList> {
  List<String> items = [
    'assets/images/credit_card.svg',
    'assets/images/paypal.svg',
  ];

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          height: 62.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedItem = index;
                  });
                },
                child: PayMethodImage(
                  image: items[index],
                  isActive: selectedItem == index,
                ),
              ),
            ),
          ),
        ));
  }
}
