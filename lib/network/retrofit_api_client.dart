import 'package:apidemo/model/availablejob/available_job_request.dart';
import 'package:apidemo/model/availablejob/available_job_response.dart';
import 'package:apidemo/util/constant.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'retrofit_api_client.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class RetrofitApiClient {
  factory RetrofitApiClient(Dio dio, {String baseUrl}) = _RetrofitApiClient;
  @POST('/JobVacancy/GetAvailableJob')
  Future<AvailableJobResponse> getAvailableJob(
      @Body() AvailableJobRequest request);
}
