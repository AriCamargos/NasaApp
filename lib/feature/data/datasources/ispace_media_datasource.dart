import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';

abstract class ISpaceMediaDatasource {
  Future<SpaceMediaEntity> getSpaceMediaFromDate(DateTime date);
}
