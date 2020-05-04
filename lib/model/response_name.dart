import 'package:json_annotation/json_annotation.dart';

part 'response_name.g.dart';

@JsonSerializable()
class ResponseName {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;

  ResponseName();

  factory ResponseName.fromJson(Map<String, dynamic> json) =>
      _$ResponseNameFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseNameToJson(this);
}
