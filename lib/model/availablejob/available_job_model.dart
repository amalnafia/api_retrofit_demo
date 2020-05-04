import 'package:apidemo/model/response_name.dart';
import 'package:json_annotation/json_annotation.dart';

import 'job_employer.dart';

part 'available_job_model.g.dart';

@JsonSerializable()
class AvailableJobModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'jobTitle')
  String jobTitle;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'postDate')
  String postDate;
  @JsonKey(name: 'createdDate')
  String createdDate;
  @JsonKey(name: 'jobEmployer')
  JobEmployer jobEmployer;
  @JsonKey(name: 'salaryType')
  ResponseName salaryType;
  @JsonKey(name: 'employmentType')
  ResponseName employmentType;

  @JsonKey(name: 'currency')
  ResponseName currency;
  @JsonKey(name: 'preferredDegree')
  List<ResponseName> preferredDegree;
  @JsonKey(name: 'preferredCountry')
  List<ResponseName> preferredCountry;
  @JsonKey(name: 'preferredNationality')
  List<ResponseName> preferredNationality;
  @JsonKey(name: 'preferredGender')
  List<ResponseName> preferredGender;
  @JsonKey(name: 'preferredMiliteryStatus')
  List<ResponseName> preferredMiliteryStatus;
  @JsonKey(name: 'preferredLanguage')
  List<ResponseName> preferredLanguage;
  @JsonKey(name: 'preferredVisaStatus')
  List<ResponseName> preferredVisaStatus;
  @JsonKey(name: 'skills')
  List<ResponseName> skills;
  @JsonKey(name: 'jobIndustry')
  List<ResponseName> jobIndustry;
  @JsonKey(name: 'preferredcarrerLevel')
  List<ResponseName> preferredcarrerLevel;

  @JsonKey(name: 'pagging')
  int pagging;
  @JsonKey(name: 'isFavorit')
  bool isFavorit;
  @JsonKey(name: 'isConfidential')
  bool isConfidential;
  @JsonKey(name: 'reference')
  String reference;
  @JsonKey(name: 'preferredAgeFrom')
  int preferredAgeFrom;
  @JsonKey(name: 'preferredAgeTo')
  int preferredAgeTo;
  @JsonKey(name: 'yearExperienceFrom')
  int yearExperienceFrom;
  @JsonKey(name: 'yearExperienceTo')
  int yearExperienceTo;
  @JsonKey(name: 'salaryFrom')
  double salaryFrom;
  @JsonKey(name: 'salaryTo')
  double salaryTo;
  @JsonKey(name: 'additionalSalaryDetails')
  String additionalSalaryDetails;
  @JsonKey(name: 'requirement')
  String requirement;
  @JsonKey(name: 'emails')
  String emails;
  @JsonKey(name: 'shareMessage')
  String shareMessage;
  @JsonKey(name: 'hideCompanyProfile')
  bool hideCompanyProfile;
  @JsonKey(name: 'isFollow')
  bool isFollow;
  @JsonKey(name: 'hasQuestion')
  bool hasQuestion;
  @JsonKey(name: 'checkApplied')
  bool checkApplied;
  @JsonKey(name: 'noOfEmployee')
  int noOfEmployee;

  AvailableJobModel();

  factory AvailableJobModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableJobModelFromJson(json);

  Map<String, dynamic> toJson() => _$AvailableJobModelToJson(this);
}
