import 'package:apidemo/model/response_header.dart';
import 'package:json_annotation/json_annotation.dart';

import 'available_job_model.dart';

part 'available_job_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AvailableJobResponse {
  @JsonKey(name: 'data')
  List<AvailableJobModel> data;
  @JsonKey(name: 'responseHeader')
  ResponseHeader responseHeader;

  AvailableJobResponse(this.data, this.responseHeader);

  factory AvailableJobResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailableJobResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AvailableJobResponseToJson(this);
}
