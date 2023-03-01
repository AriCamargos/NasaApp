import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_app/core/erros/failures.dart';
import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';
import 'package:nasa_app/feature/domain/repositories/space_media_repository.dart';
import 'package:nasa_app/feature/domain/usecases/get_space_media_from_date_usecase.dart';
import 'package:mocktail/src/mocktail.dart';

class MockSpaceMediaRepository extends Mock implements ISpaceMediaRepository {}

void main() {
  late GetSpaceMediaFromDateUsecase usecase;
  late ISpaceMediaRepository repository;

  final tDate = DateTime(2022, 07, 05);

  setUp((() {
    repository = MockSpaceMediaRepository();
    usecase = GetSpaceMediaFromDateUsecase(repository);
  }));

  // ignore: prefer_const_constructors
  final tSpaceMedia = SpaceMediaEntity(
    description: 'A Thunder Supermoon -- the third of four supermoons in 2022',
    mediaType: 'image',
    title: 'Strawberry Supermoon Over Devil\'s Saddle',
    mediaUrl:
        "https://apod.nasa.gov/apod/image/2207/StrawberryMoonRise_Busilacchi_6720.jpg",
  );

//Essa implementação é apenas para fazer o mock
//Caso feliz, vai fazer isso no caso de sucesso
  test('should get space media entit from for a given date from the repository',
      () async {
    when(() => repository.getSpaceMediaFromDate(tDate))
        .thenAnswer((_) async => Right<Failure, SpaceMediaEntity>(tSpaceMedia));
    final result = await usecase(tDate);
    expect(result, Right(tSpaceMedia));
    verify(() => repository.getSpaceMediaFromDate(tDate));
  });

//Caso não feliz
 test('should return a ServerFailure when don\'t sucessed',
      () async {
    when(() => repository.getSpaceMediaFromDate(tDate))
        .thenAnswer((_) async => Left<Failure, SpaceMediaEntity>(ServerFailure()));
    final result = await usecase(tDate);
    expect(result, Left(ServerFailure()));
    verify(() => repository.getSpaceMediaFromDate(tDate));

  });
}


