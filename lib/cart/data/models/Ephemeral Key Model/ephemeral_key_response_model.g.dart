// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ephemeral_key_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EphemeralKeyResponseModel _$EphemeralKeyResponseModelFromJson(
        Map<String, dynamic> json) =>
    EphemeralKeyResponseModel(
      id: json['id'] as String?,
      object: json['object'] as String?,
      associatedObjects: (json['associated_objects'] as List<dynamic>?)
          ?.map((e) => AssociatedObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: (json['created'] as num?)?.toInt(),
      expires: (json['expires'] as num?)?.toInt(),
      livemode: json['livemode'] as bool?,
      secret: json['secret'] as String?,
    );

AssociatedObject _$AssociatedObjectFromJson(Map<String, dynamic> json) =>
    AssociatedObject(
      id: json['id'] as String?,
      type: json['type'] as String?,
    );
