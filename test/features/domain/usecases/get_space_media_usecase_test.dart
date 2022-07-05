import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_app/core/usecase/usecase.dart';
import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';
import 'package:nasa_app/feature/domain/repositories/space_media_repository.dart';
import 'package:nasa_app/feature/domain/usecases/get_space_media_usecase.dart';

class MockSpaceMediaRepository extends Mock implements ISpaceMediaRepository {}

void main() {
  late GetSpaceMediaUsecase usecase;
  late ISpaceMediaRepository repository;

  final tNoParams = NoParams();

  setUp((() {
    repository = MockSpaceMediaRepository();
    usecase = GetSpaceMediaUsecase(repository: repository);
  }));

  // ignore: prefer_const_constructors
  final tSpaceMedia = SpaceMediaEntity(
    description: 'A Thunder Supermoon -- the third of four supermoons in 2022',
    mediaType: 'image',
    title: 'Strawberry Supermoon Over Devil\'s Saddle',
    mediaUrl:
        "https://apod.nasa.gov/apod/image/2207/StrawberryMoonRise_Busilacchi_6720.jpg",
  );

  test('should get space media from for a given date from the repository', () async {
    when(() => repository.getSpaceMediaFromDate()).thenAnswer((invocation) async => Right(tSpaceMedia));
    final result = await usecase(tNoParams); 
    expect(result, Right(tSpaceMedia));
    verify(()=> repository);
  });
}
