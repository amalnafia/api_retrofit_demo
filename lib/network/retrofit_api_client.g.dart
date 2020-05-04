// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrofit_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RetrofitApiClient implements RetrofitApiClient {
  _RetrofitApiClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'http://108.60.209.97/JobShop/api/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getAvailableJob(request) async {
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/JobVacancy/GetAvailableJob',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AvailableJobResponse.fromJson(_result.data);
    return Future.value(value);
  }
}
