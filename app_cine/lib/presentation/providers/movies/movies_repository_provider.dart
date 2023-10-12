import 'package:app_cine/infrastructure/datasources/moviedb_datasource.dart';
import 'package:app_cine/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl( MoviedbDatasource());
});