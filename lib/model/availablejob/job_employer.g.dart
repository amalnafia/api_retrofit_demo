// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_employer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobEmployer _$JobEmployerFromJson(Map<String, dynamic> json) {
  return JobEmployer(
    json['id'] as int,
    json['companyName'] as String,
    json['companyLogo'] as String,
  )..fullAddress = json['fullAddress'] as String;
}

Map<String, dynamic> _$JobEmployerToJson(JobEmployer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyName': instance.companyName,
      'companyLogo': instance.companyLogo,
      'fullAddress': instance.fullAddress,
    };
