import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';
import 'package:nasa_app/core/erros/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nasa_app/feature/domain/repositories/space_media_repository.dart';

import '../datasources/ispace_media_datasource.dart';

class SpaceMediaRepositoryImplementation implements ISpaceMediaRepository {
  // Datasource implementa o meu banco de dados
  final ISpaceMediaDatasource datasource;

  SpaceMediaRepositoryImplementation(
    this.datasource,
  );

  @override
  Future<Either<Failure, SpaceMediaEntity>> getSpaceMediaFromDate(
      DateTime date) {
    throw UnimplementedError();
  }
}

//Recebe um datasource e faz a chamada - pedimos as abstrações para injetar as implementações