// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableJobModel _$AvailableJobModelFromJson(Map<String, dynamic> json) {
  return AvailableJobModel()
    ..id = json['id'] as int
    ..jobTitle = json['jobTitle'] as String
    ..description = json['description'] as String
    ..postDate = json['postDate'] as String
    ..createdDate = json['createdDate'] as String
    ..jobEmployer = json['jobEmployer'] == null
        ? null
        : JobEmployer.fromJson(json['jobEmployer'] as Map<String, dynamic>)
    ..salaryType = json['salaryType'] == null
        ? null
        : ResponseName.fromJson(json['salaryType'] as Map<String, dynamic>)
    ..employmentType = json['employmentType'] == null
        ? null
        : ResponseName.fromJson(json['employmentType'] as Map<String, dynamic>)
    ..currency = json['currency'] == null
        ? null
        : ResponseName.fromJson(json['currency'] as Map<String, dynamic>)
    ..preferredDegree = (json['preferredDegree'] as List)
        ?.map((e) =>
            e == null ? null : ResponseName.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..preferredCountry = (json['preferredCountry'] as List)
        ?.map((e) =>
            e == null ? null : ResponseName.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..preferredNationality = (json['preferredNationality'] as List)
        ?.map((e) =>
            e == null ? null : ResponseName.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..preferredGender = (json['preferredGender'] as List)
        ?.map((e) =>
            e == null ? null : ResponseName.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..preferredMiliteryStatus = (json['preferredMiliteryStatus'] as List)
        ?.map((e) =>
            e == null ? null : ResponseName.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..preferredLanguage = (json['preferredLanguage'] as List)
        ?.map((e) =>
            e == null ? null : ResponseName.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..preferredVisaStatus = (json['preferredVisaStatus'] as List)
        ?.map((e) =>
            e == null ? null : ResponseName.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..skills = (json['skills'] as List)
        ?.map((e) =>
            e == null ? null : ResponseName.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..jobIndustry = (json['jobIndustry'] as List)
        ?.map((e) =>
            e == null ? null : ResponseName.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..preferredcarrerLevel = (json['preferredcarrerLevel'] as List)
        ?.map((e) =>
            e == null ? null : ResponseName.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..pagging = json['pagging'] as int
    ..isFavorit = json['isFavorit'] as bool
    ..isConfidential = json['isConfidential'] as bool
    ..reference = json['reference'] as String
    ..preferredAgeFrom = json['preferredAgeFrom'] as int
    ..preferredAgeTo = json['preferredAgeTo'] as int
    ..yearExperienceFrom = json['yearExperienceFrom'] as int
    ..yearExperienceTo = json['yearExperienceTo'] as int
    ..salaryFrom = (json['salaryFrom'] as num)?.toDouble()
    ..salaryTo = (json['salaryTo'] as num)?.toDouble()
    ..additionalSalaryDetails = json['additionalSalaryDetails'] as String
    ..requirement = json['requirement'] as String
    ..emails = json['emails'] as String
    ..shareMessage = json['shareMessage'] as String
    ..hideCompanyProfile = json['hideCompanyProfile'] as bool
    ..isFollow = json['isFollow'] as bool
    ..hasQuestion = json['hasQuestion'] as bool
    ..checkApplied = json['checkApplied'] as bool
    ..noOfEmployee = json['noOfEmployee'] as int;
}

Map<String, dynamic> _$AvailableJobModelToJson(AvailableJobModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jobTitle': instance.jobTitle,
      'description': instance.description,
      'postDate': instance.postDate,
      'createdDate': instance.createdDate,
      'jobEmployer': instance.jobEmployer,
      'salaryType': instance.salaryType,
      'employmentType': instance.employmentType,
      'currency': instance.currency,
      'preferredDegree': instance.preferredDegree,
      'preferredCountry': instance.preferredCountry,
      'preferredNationality': instance.preferredNationality,
      'preferredGender': instance.preferredGender,
      'preferredMiliteryStatus': instance.preferredMiliteryStatus,
      'preferredLanguage': instance.preferredLanguage,
      'preferredVisaStatus': instance.preferredVisaStatus,
      'skills': instance.skills,
      'jobIndustry': instance.jobIndustry,
      'preferredcarrerLevel': instance.preferredcarrerLevel,
      'pagging': instance.pagging,
      'isFavorit': instance.isFavorit,
      'isConfidential': instance.isConfidential,
      'reference': instance.reference,
      'preferredAgeFrom': instance.preferredAgeFrom,
      'preferredAgeTo': instance.preferredAgeTo,
      'yearExperienceFrom': instance.yearExperienceFrom,
      'yearExperienceTo': instance.yearExperienceTo,
      'salaryFrom': instance.salaryFrom,
      'salaryTo': instance.salaryTo,
      'additionalSalaryDetails': instance.additionalSalaryDetails,
      'requirement': instance.requirement,
      'emails': instance.emails,
      'shareMessage': instance.shareMessage,
      'hideCompanyProfile': instance.hideCompanyProfile,
      'isFollow': instance.isFollow,
      'hasQuestion': instance.hasQuestion,
      'checkApplied': instance.checkApplied,
      'noOfEmployee': instance.noOfEmployee,
    };
