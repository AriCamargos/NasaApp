import 'package:dartz/dartz.dart';
import 'package:nasa_app/core/erros/failures.dart';
import 'package:nasa_app/core/usecase/usecase.dart';
import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';

class GetSpaceMediaUsecase extends Usecase<SpaceMediaEntity, NoParams> {
  final ISpaceMediaRepository repository;

  GetSpaceMediaUsecase({
    this.repository,
  });

  @override
  Future<Either<Failure, SpaceMediaEntity>> call(NoParams params) async {
    return await repository.getSpaceMediaFromDate();
  }
}
