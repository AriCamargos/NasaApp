import 'package:dartz/dartz.dart';
import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';

import '../../../core/erros/failures.dart';

abstract class ISpaceMediaRepository {
  Future<Either<Failure, SpaceMediaEntity>> getSpaceMediaFromDate(DateTime date);
}
