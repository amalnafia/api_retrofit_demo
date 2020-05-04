import 'package:json_annotation/json_annotation.dart';

part 'job_employer.g.dart';

@JsonSerializable(explicitToJson: true)
class JobEmployer {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'companyName')
  String companyName;
  @JsonKey(name: 'companyLogo')
  String companyLogo;
  @JsonKey(name: 'fullAddress')
  String fullAddress;

  JobEmployer(this.id, this.companyName, this.companyLogo);

  factory JobEmployer.fromJson(Map<String, dynamic> json) =>
      _$JobEmployerFromJson(json);

  Map<String, dynamic> toJson() => _$JobEmployerToJson(this);
}
