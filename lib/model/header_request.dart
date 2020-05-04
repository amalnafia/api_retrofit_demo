import 'package:apidemo/util/constant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'header_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class HeaderRequest {
  @JsonKey(name: 'ip', defaultValue: '')
  String ip;
  @JsonKey(name: 'deviceSerial', defaultValue: '')
  String deviceSerial;
  @JsonKey(name: 'notificationToken', defaultValue: '')
  String notificationToken;
  @JsonKey(name: 'osversion', defaultValue: '')
  String osVersion;
  @JsonKey(name: 'appversion', defaultValue: '')
  String appVersion;
  @JsonKey(name: 'appLanguage', defaultValue: 1)
  int appLanguage;
  @JsonKey(name: 'currencyId', defaultValue: 0)
  int currencyId;
  @JsonKey(name: 'countryId', defaultValue: 0)
  int countryId;
  @JsonKey(name: 'deviceType', defaultValue: 1)
  int deviceType;
  @JsonKey(name: 'userId', defaultValue: 0)
  int userId;
  @JsonKey(name: 'isWeb', defaultValue: false)
  bool isWeb;
  @JsonKey(name: 'userType', defaultValue: 1)
  int userType;

  HeaderRequest(this.appLanguage, this.currencyId, this.countryId, this.userId,
      this.userType) {
    deviceSerial = Constant.deviceSerial;
    notificationToken = Constant.notificationToken;
    osVersion = Constant.osVersion;
    appVersion = Constant.applicationVersion;
    ip = "";
    if (appLanguage == 0) {
      this.appLanguage = 1;
    } else {
      this.appLanguage = appLanguage;
    }
    isWeb = false;
    if (Constant.deviceSerial == null)
      deviceSerial = "String";
    else
      this.deviceSerial = Constant.deviceSerial;
    this.deviceType = 1;
  }

  factory HeaderRequest.fromJson(Map<String, dynamic> json) =>
      _$HeaderRequestFromJson(json);
  Map<String, dynamic> toJson() => _$HeaderRequestToJson(this);
}
