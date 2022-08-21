import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';
import 'package:faker/faker.dart';

class SpaceMediaDateModel extends SpaceMediaEntity {
  const SpaceMediaDateModel({
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

  factory SpaceMediaDateModel.fromJson(Map<String, dynamic> json) {
    return SpaceMediaDateModel(
      description: json['explanation'],
      mediaUrl: json['url'],
      title: json['title'],
      mediaType: json['media_type'],
    );
  }

  Map<String, dynamic> toJson() => {
        'description': description,
        'media_type': mediaType,
        'media_url': mediaUrl,
        'title': title,
      };

  factory SpaceMediaDateModel.fake() => SpaceMediaDateModel(
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

  static List<SpaceMediaDateModel> fakeList({required int lenght}) {
    return List<SpaceMediaDateModel>.generate(
      lenght,
      (index) => SpaceMediaDateModel.fake(),
    );
  }
}
