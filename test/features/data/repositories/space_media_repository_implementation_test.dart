import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_app/feature/data/datasources/space_media_datasource.dart';
import 'package:nasa_app/feature/data/repositories/space_media_repository_implementation.dart';

class MockSpaceMediaDatasource extends Mock implements ISpaceMediaDatasource {}

void main() {
  SpaceMediaRepositoryImplementation repository;
  ISpaceMediaDatasource datasource;

//setup inicializa o repository
  setUp(() {
    datasource = MockSpaceMediaDatasource();
    repository = SpaceMediaRepositoryImplementation(datasource);
  });

  test('should return space media model when calls the datasource', () {});
}
