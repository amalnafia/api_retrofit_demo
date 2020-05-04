// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_job_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableJobRequest _$AvailableJobRequestFromJson(Map<String, dynamic> json) {
  return AvailableJobRequest(
    json['id'] as int,
    json['pageSource'] as int,
    json['employeerId'] as int,
    json['pagging'] as int,
    (json['jobVacancyLocation'] as List)
        ?.map((e) =>
            e == null ? null : RequestId.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['jobVacancyIndustry'] as List)
        ?.map((e) =>
            e == null ? null : RequestId.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['jobVacancyCarrerLevels'] as List)
        ?.map((e) =>
            e == null ? null : RequestId.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['jobVacancyPreferredDegree'] as List)
        ?.map((e) =>
            e == null ? null : RequestId.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['jobVacancyPreferredNatinality'] as List)
        ?.map((e) =>
            e == null ? null : RequestId.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['jobVacancyPreferredLanguage'] as List)
        ?.map((e) =>
            e == null ? null : RequestId.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['employmentTypeId'] as int,
    json['yearExperienceFrom'] as int,
    json['yearExperienceTo'] as int,
    json['salaryFrom'] as int,
    json['salaryTo'] as int,
    json['keyword'] as String,
    (json['jobVacancySkills'] as List)
        ?.map((e) =>
            e == null ? null : RequestId.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['requestHeader'] == null
        ? null
        : HeaderRequest.fromJson(json['requestHeader'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AvailableJobRequestToJson(
        AvailableJobRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pageSource': instance.pageSource,
      'employeerId': instance.employeerId,
      'pagging': instance.pagging,
      'jobVacancyLocation':
          instance.jobVacancyLocation?.map((e) => e?.toJson())?.toList(),
      'jobVacancyIndustry':
          instance.jobVacancyIndustry?.map((e) => e?.toJson())?.toList(),
      'jobVacancyCarrerLevels':
          instance.jobVacancyCarrerLevels?.map((e) => e?.toJson())?.toList(),
      'jobVacancyPreferredDegree':
          instance.jobVacancyPreferredDegree?.map((e) => e?.toJson())?.toList(),
      'jobVacancyPreferredNatinality': instance.jobVacancyPreferredNatinality
          ?.map((e) => e?.toJson())
          ?.toList(),
      'jobVacancyPreferredLanguage': instance.jobVacancyPreferredLanguage
          ?.map((e) => e?.toJson())
          ?.toList(),
      'employmentTypeId': instance.employmentTypeId,
      'yearExperienceFrom': instance.yearExperienceFrom,
      'yearExperienceTo': instance.yearExperienceTo,
      'salaryFrom': instance.salaryFrom,
      'salaryTo': instance.salaryTo,
      'keyword': instance.keyword,
      'jobVacancySkills':
          instance.jobVacancySkills?.map((e) => e?.toJson())?.toList(),
      'requestHeader': instance.requestHeader?.toJson(),
    };
