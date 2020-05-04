// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeaderRequest _$HeaderRequestFromJson(Map<String, dynamic> json) {
  return HeaderRequest(
    json['appLanguage'] as int ?? 1,
    json['currencyId'] as int ?? 0,
    json['countryId'] as int ?? 0,
    json['userId'] as int ?? 0,
    json['userType'] as int ?? 1,
  )
    ..ip = json['ip'] as String ?? ''
    ..deviceSerial = json['deviceSerial'] as String ?? ''
    ..notificationToken = json['notificationToken'] as String ?? ''
    ..osVersion = json['osversion'] as String ?? ''
    ..appVersion = json['appversion'] as String ?? ''
    ..deviceType = json['deviceType'] as int ?? 1
    ..isWeb = json['isWeb'] as bool ?? false;
}

Map<String, dynamic> _$HeaderRequestToJson(HeaderRequest instance) =>
    <String, dynamic>{
      'ip': instance.ip,
      'deviceSerial': instance.deviceSerial,
      'notificationToken': instance.notificationToken,
      'osversion': instance.osVersion,
      'appversion': instance.appVersion,
      'appLanguage': instance.appLanguage,
      'currencyId': instance.currencyId,
      'countryId': instance.countryId,
      'deviceType': instance.deviceType,
      'userId': instance.userId,
      'isWeb': instance.isWeb,
      'userType': instance.userType,
    };
