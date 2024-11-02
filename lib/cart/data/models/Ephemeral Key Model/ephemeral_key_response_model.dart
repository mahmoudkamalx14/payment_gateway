import 'package:json_annotation/json_annotation.dart';

part 'ephemeral_key_response_model.g.dart';

@JsonSerializable(createToJson: false)
class EphemeralKeyResponseModel {
  EphemeralKeyResponseModel({
    required this.id,
    required this.object,
    required this.associatedObjects,
    required this.created,
    required this.expires,
    required this.livemode,
    required this.secret,
  });

  final String? id;
  final String? object;

  @JsonKey(name: 'associated_objects')
  final List<AssociatedObject>? associatedObjects;
  final int? created;
  final int? expires;
  final bool? livemode;
  final String? secret;

  factory EphemeralKeyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EphemeralKeyResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class AssociatedObject {
  AssociatedObject({
    required this.id,
    required this.type,
  });

  final String? id;
  final String? type;

  factory AssociatedObject.fromJson(Map<String, dynamic> json) =>
      _$AssociatedObjectFromJson(json);
}
