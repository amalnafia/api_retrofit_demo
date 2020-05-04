// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableJobResponse _$AvailableJobResponseFromJson(Map<String, dynamic> json) {
  return AvailableJobResponse(
    (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : AvailableJobModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['responseHeader'] == null
        ? null
        : ResponseHeader.fromJson(
            json['responseHeader'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AvailableJobResponseToJson(
        AvailableJobResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
      'responseHeader': instance.responseHeader?.toJson(),
    };
