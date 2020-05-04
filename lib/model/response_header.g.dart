// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseHeader _$ResponseHeaderFromJson(Map<String, dynamic> json) {
  return ResponseHeader(
    json['responseCode'] as int,
    json['responseMessage'] as String,
    json['responseRemark'] as String,
  );
}

Map<String, dynamic> _$ResponseHeaderToJson(ResponseHeader instance) =>
    <String, dynamic>{
      'responseCode': instance.responseCode,
      'responseMessage': instance.responseMessage,
      'responseRemark': instance.responseRemark,
    };
