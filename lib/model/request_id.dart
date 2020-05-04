import 'package:json_annotation/json_annotation.dart';

part 'request_id.g.dart';

@JsonSerializable(explicitToJson: true)
class RequestId {
  @JsonKey(name: 'id')
  int id;

  RequestId(this.id);

  factory RequestId.fromJson(Map<String, dynamic> json) =>
      _$RequestIdFromJson(json);

  Map<String, dynamic> toJson() => _$RequestIdToJson(this);
}
