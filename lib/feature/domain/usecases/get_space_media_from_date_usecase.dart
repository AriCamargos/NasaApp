import 'package:dartz/dartz.dart';
import 'package:nasa_app/core/erros/failures.dart';
import 'package:nasa_app/core/usecase/usecase.dart';
import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';

import '../repositories/space_media_repository.dart';

class GetSpaceMediaUsecase extends Usecase<SpaceMediaEntity, DateTime> {
  final ISpaceMediaRepository repository;

  GetSpaceMediaUsecase(
    this.repository,
  );

  @override
  Future<Either<Failure, SpaceMediaEntity>> call(DateTime date) async {
    return await repository.getSpaceMediaFromDate(date);
  }
}
