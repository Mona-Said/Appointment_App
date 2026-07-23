import 'package:appointment_app/core/networking/app_constants.dart';
import 'package:appointment_app/features/login/data/models/login_request_model.dart';
import 'package:appointment_app/features/login/data/models/login_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: AppConstants.appBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(AppConstants.login)
  Future<LoginResponseModel> login(@Body() LoginRequestModel loginRequestModel);
}
