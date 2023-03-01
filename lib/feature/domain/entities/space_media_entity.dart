// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class SpaceMediaEntity extends Equatable {
  final String description;
  final String mediaType;
  final String title;
  final String mediaUrl;

  const SpaceMediaEntity({
    required this.description,
    required this.mediaType,
    required this.title,
    required this.mediaUrl,
  });

  @override
  List<Object> get props => [
        description,
        mediaType,
        title,
        mediaUrl,
      ];

  SpaceMediaEntity copyWith({
    String? description,
    String? mediaType,
    String? title,
    String? mediaUrl,
  }) {
    return SpaceMediaEntity(
      description: description ?? this.description,
      mediaType: mediaType ?? this.mediaType,
      title: title ?? this.title,
      mediaUrl: mediaUrl ?? this.mediaUrl,
    );
  }
}
