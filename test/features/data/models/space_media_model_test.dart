// import 'package:flutter_test/flutter_test.dart';
// import 'package:nasa_app/feature/data/models/space_media_date_model.dart';

// void main() {
//   test('Create to Json', () {
//     final fake = SpaceMediaDateModel.fake();

//     final json = {
//       'description': fake.description,
//       'media_type': fake.mediaType,
//       'media_url': fake.mediaUrl,
//       'title': fake.title,
//     };

//     final spaceMedia = SpaceMediaDateModel.fromJson(json);

//     expect(spaceMedia, isA<SpaceMediaDateModel>());

//     expect(spaceMedia, equals(fake));
//   });

//   test('Create a fake model', () {
//     final spaceMedia = SpaceMediaDateModel.fake();

//     // expect(spaceMedia, isA<SpaceMediaDateModel>());

//     final otherSpaceMedia = SpaceMediaDateModel.fake();

//     expect(otherSpaceMedia, isNot(spaceMedia));
//   });
// }
