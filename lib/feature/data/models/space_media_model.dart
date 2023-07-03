import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';
import 'package:faker/faker.dart';

class SpaceMediaModel extends SpaceMediaEntity {
  const SpaceMediaModel({
    required String description,
    required String mediaUrl,
    required String title,
    required String mediaType,
  }) : super(
          description: description,
          mediaUrl: mediaUrl,
          title: title,
          mediaType: mediaType,
        );

  factory SpaceMediaModel.fromJson(Map<String, dynamic> json) {
    return SpaceMediaModel(
      description: json['explanation'],
      mediaUrl: json['url'],
      title: json['title'],
      mediaType: json['media_type'],
    );
  }

  Map<String, dynamic> toJson() => {
        'explanation': description,
        'media_type': mediaType,
        'url': mediaUrl,
        'title': title,
      };

  factory SpaceMediaModel.fake() => SpaceMediaModel(
        description: faker.lorem.sentence(),
        mediaUrl: faker.internet.httpUrl(),
        title: faker.lorem.sentence(),
        mediaType: faker.image.image(
          keywords: ['space', 'nasa'],
          random: true,
          width: 1200,
          height: 900,
        ),
      );

  static List<SpaceMediaModel> fakeList({required int lenght}) {
    return List<SpaceMediaModel>.generate(
      lenght,
      (index) => SpaceMediaModel.fake(),
    );
  }
}
