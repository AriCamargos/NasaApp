// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:nasa_app/core/utils/keys/nasa_api_keys.dart';
import 'package:nasa_app/feature/data/datasources/endpoints/nasa_endpoints.dart';
import 'package:nasa_app/feature/data/datasources/ispace_media_datasource.dart';
import 'package:nasa_app/feature/domain/entities/space_media_entity.dart';

class NasaDatasource implements ISpaceMediaDatasource {
  final HttpClient client;
  NasaDatasource({
    required this.client,
  });
  @override
  Future<SpaceMediaEntity> getSpaceMediaFromDate(DateTime date) {
return await client.get(NasaEndpoints.apod(NasaApiKeys.api_key,)) ;
  }

} 
