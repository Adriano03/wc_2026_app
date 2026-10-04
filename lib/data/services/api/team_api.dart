import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:wc_2026_app/data/services/api/model/team/team_api_model.dart';

part 'team_api.g.dart';

@RestApi()
abstract class TeamApi {
  factory TeamApi(Dio dio) = _TeamApi;

  @GET('/v1/teams')
  @Extra({})
  Future<List<TeamApiModel>> getTeams();
}
