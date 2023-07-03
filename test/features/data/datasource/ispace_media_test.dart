import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_app/core/utils/keys/converters/date_to_string_converter.dart';
import 'package:nasa_app/feature/data/datasources/space_media_datasource.dart';

import '../../../mock/space_media_mock.dart';

class HttpClientMock extends Mock implements HttpClient {}

void main() {
  //Testa datasource implementação
 late NasaDatasource datasource;
  late HttpClient client;

  setUp(() {
    client = HttpClientMock();
    datasource = NasaDatasource(client: client);
  });
  final tDateTime = DateTime(2021,02,02);
  final urlExpect = "https://apod.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=$2021-02-02";
  DateToStringConverter.converter(tDateTime);
  //TODO> se é chamado com a url certa
  /*test('should call the get method with corret url ', () async {
    
  when(() => converter.format(any())).thenReturn(tDateTimeString);
    when(() => client.get(any()))
        .thenAnswer((_) async => http.Response('something went wrong', 400));  });
  await datasource.getSpaceMediaFromDate(tDateTime);

  verify(() => client.get(url),);
  }*/

