import 'package:wc_2026_app/core/result.dart';
import 'package:wc_2026_app/domain/models/team/team.dart';

abstract interface class TeamRepository {
  Future<Result<List<Team>>> getTeams();
}
