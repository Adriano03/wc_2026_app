import 'package:wc_2026_app/data/services/api/mappers/team_api_model_mapper.dart';
import 'package:wc_2026_app/data/services/api/model/album/recent_sticker_api_model.dart';
import 'package:wc_2026_app/domain/models/album/recent_sticker.dart';

extension RecentStickerApiModelMapper on RecentStickerApiModel {
  RecentSticker toDomain() => RecentSticker(code: code, number: number, repeated: repeated, team: team?.toDomain());
}
