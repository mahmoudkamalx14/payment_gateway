import 'package:dio/dio.dart';
import 'package:payment_getaway/cart/data/repository/payment_stripe_repository.dart';
import 'package:payment_getaway/cart/data/services/payment_service.dart';
import 'package:payment_getaway/cart/presentation/logic/payment_cubit.dart';
import 'package:payment_getaway/core/di/dependency_injection.dart';
import 'package:payment_getaway/core/networking/dio_factory.dart';

Future<void> paymentDependency() async {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<PaymentService>(() => PaymentService(dio));

  getIt.registerLazySingleton<PaymentStripeRepository>(
      () => PaymentStripeRepository(getIt()));

  getIt.registerFactory<PaymentCubit>(() => PaymentCubit(getIt()));
}
