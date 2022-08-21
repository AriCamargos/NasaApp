import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_app/feature/data/datasources/space_media_datasource.dart';
import 'package:nasa_app/feature/data/models/space_media_model.dart';
import 'package:nasa_app/feature/data/repositories/space_media_repository_implementation.dart';

class MockSpaceMediaDatasource extends Mock implements ISpaceMediaDatasource {}

void main() {
  late SpaceMediaRepositoryImplementation repository;
  late ISpaceMediaDatasource datasource;

  final tDate = DateTime(2022, 07, 05);

//setup inicializa o repository
  setUp(() {
    datasource = MockSpaceMediaDatasource();
    repository = SpaceMediaRepositoryImplementation(datasource);
  });

  const tSpaceMediaModel = SpaceMediaModel(
    description: 'A Thunder Supermoon -- the third of four supermoons in 2022',
    mediaType: 'image',
    title: 'Strawberry Supermoon Over Devil\'s Saddle',
    mediaUrl:
        "https://apod.nasa.gov/apod/image/2207/StrawberryMoonRise_Busilacchi_6720.jpg",
  );

  test('should return space media model when calls the datasource', () async {
    when(datasource).calls(#getSpaceMediaFromDate).thenAswer((_) async tSpaceMediaModel);

    final result = await repository.getSpaceMediaFromDate(tDate);
  });
}
