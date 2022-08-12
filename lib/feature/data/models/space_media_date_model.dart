import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';

class SpaceMediaDateModel extends SpaceMediaEntity {
  const SpaceMediaDateModel({
    required String description,
    required String mediaType,
    required String title,
    required String mediaUrl,
  }) : super(
          description: description,
          mediaType: mediaType,
          title: title,
          mediaUrl: mediaUrl,
        );

  factory SpaceMediaDateModel.fromJson(Map<String, dynamic> json) {
    return SpaceMediaDateModel(
        description: json[''],
        mediaType: json[''],
        mediaUrl: json[''],
        title: json['']);
  }
}
