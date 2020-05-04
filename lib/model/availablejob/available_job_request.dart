import 'package:apidemo/model/header_request.dart';
import 'package:apidemo/model/request_id.dart';
import 'package:json_annotation/json_annotation.dart';

part 'available_job_request.g.dart';

@JsonSerializable(explicitToJson: true)
class AvailableJobRequest {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'pageSource')
  int pageSource;

  @JsonKey(name: 'employeerId')
  int employeerId;

  @JsonKey(name: 'pagging')
  int pagging;

  @JsonKey(name: 'jobVacancyLocation')
  List<RequestId> jobVacancyLocation;

  @JsonKey(name: 'jobVacancyIndustry')
  List<RequestId> jobVacancyIndustry;

  @JsonKey(name: 'jobVacancyCarrerLevels')
  List<RequestId> jobVacancyCarrerLevels;

  @JsonKey(name: 'jobVacancyPreferredDegree')
  List<RequestId> jobVacancyPreferredDegree;

  @JsonKey(name: 'jobVacancyPreferredNatinality')
  List<RequestId> jobVacancyPreferredNatinality;

  @JsonKey(name: 'jobVacancyPreferredLanguage')
  List<RequestId> jobVacancyPreferredLanguage;

  @JsonKey(name: 'employmentTypeId')
  int employmentTypeId;

  @JsonKey(name: 'yearExperienceFrom')
  int yearExperienceFrom;

  @JsonKey(name: 'yearExperienceTo')
  int yearExperienceTo;

  @JsonKey(name: 'salaryFrom')
  int salaryFrom;

  @JsonKey(name: 'salaryTo')
  int salaryTo;

  @JsonKey(name: 'keyword')
  String keyword;

  @JsonKey(name: 'jobVacancySkills')
  List<RequestId> jobVacancySkills;

  @JsonKey(name: 'requestHeader')
  HeaderRequest requestHeader;

  AvailableJobRequest(
      this.id,
      this.pageSource,
      this.employeerId,
      this.pagging,
      this.jobVacancyLocation,
      this.jobVacancyIndustry,
      this.jobVacancyCarrerLevels,
      this.jobVacancyPreferredDegree,
      this.jobVacancyPreferredNatinality,
      this.jobVacancyPreferredLanguage,
      this.employmentTypeId,
      this.yearExperienceFrom,
      this.yearExperienceTo,
      this.salaryFrom,
      this.salaryTo,
      this.keyword,
      this.jobVacancySkills,
      this.requestHeader);

  factory AvailableJobRequest.fromJson(Map<String, dynamic> json) =>
      _$AvailableJobRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AvailableJobRequestToJson(this);
}
