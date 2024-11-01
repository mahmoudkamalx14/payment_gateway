import 'package:get_it/get_it.dart';
import 'package:payment_getaway/cart/data/services/payment_dependency.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  await paymentDependency();
}
