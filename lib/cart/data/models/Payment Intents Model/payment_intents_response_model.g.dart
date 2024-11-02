// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_intents_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentIntentsResponseModel _$PaymentIntentsResponseModelFromJson(
        Map<String, dynamic> json) =>
    PaymentIntentsResponseModel(
      id: json['id'] as String?,
      object: json['object'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      amountCapturable: (json['amount_capturable'] as num?)?.toInt(),
      amountReceived: (json['amount_received'] as num?)?.toInt(),
      application: json['application'],
      applicationFeeAmount: json['application_fee_amount'],
      canceledAt: json['canceled_at'],
      captureMethod: json['capture_method'] as String?,
      clientSecret: json['client_secret'] as String?,
      confirmationMethod: json['confirmation_method'] as String?,
      created: (json['created'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      customer: json['customer'],
      description: json['description'],
      invoice: json['invoice'],
      lastPaymentError: json['last_payment_error'],
      latestCharge: json['latest_charge'],
      livemode: json['livemode'] as bool?,
      nextAction: json['next_action'],
      onBehalfOf: json['on_behalf_of'],
      paymentMethod: json['payment_method'],
      paymentMethodConfigurationDetails:
          json['payment_method_configuration_details'],
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      processing: json['processing'],
      receiptEmail: json['receipt_email'],
      review: json['review'],
      setupFutureUsage: json['setup_future_usage'],
      shipping: json['shipping'],
      source: json['source'],
      statementDescriptor: json['statement_descriptor'],
      statementDescriptorSuffix: json['statement_descriptor_suffix'],
      status: json['status'] as String?,
      transferData: json['transfer_data'],
      transferGroup: json['transfer_group'],
    );
