import 'package:dartz/dartz.dart';
import 'package:nasa_app/core/erros/failures.dart';
import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';

import '../../../core/usecase/usecase.dart';
import '../repositories/space_media_repository.dart';

class GetSpaceMediaFromDateUsecase implements Usecase<SpaceMediaEntity, DateTime> {
  final ISpaceMediaRepository repository;

  GetSpaceMediaFromDateUsecase(
    this.repository,
  );

  @override
  Future<Either<Failure, SpaceMediaEntity>> call(DateTime date) async {
    return await repository.getSpaceMediaFromDate(date);
  }
}
