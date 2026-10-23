import 'package:wc_2026_app/data/services/api/model/album/album_position_api_model.dart';
import 'package:wc_2026_app/domain/models/album/album_position.dart';

extension AlbumPositionApiModelMapper on AlbumPositionApiModel {
  AlbumPosition toDomain() => AlbumPosition(code: code, number: number, status: status, repeated: repeated);
}
