import 'package:json_annotation/json_annotation.dart';

part 'response_header.g.dart';

@JsonSerializable(explicitToJson: true)
class ResponseHeader {
  @JsonKey(name: 'responseCode')
  int responseCode;
  @JsonKey(name: 'responseMessage')
  String responseMessage;
  @JsonKey(name: 'responseRemark')
  String responseRemark;

  ResponseHeader(this.responseCode, this.responseMessage, this.responseRemark);

  factory ResponseHeader.fromJson(Map<String, dynamic> json) =>
      _$ResponseHeaderFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseHeaderToJson(this);
}
