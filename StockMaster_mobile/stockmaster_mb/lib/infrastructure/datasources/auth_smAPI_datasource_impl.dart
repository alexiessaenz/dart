import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:stockmaster_mb/domain/datasources/auth_datasource.dart';

import '../../config/constants/environment.dart';

class AuthSmApiDatasourceImpl extends AuthDataSource {
  final dio = Dio(BaseOptions(
    baseUrl: Environment.theBaseUrl,
    queryParameters: {
      'api_key': Environment.theMovieDbKey,
      'language': 'es-MX'
    }
  ));

  Future<Token> _jsonToToken( Map<String,dynamic> json ) {

    final movieDBResponse = MovieDbResponse.fromJson(json);

    final List<Movie> movies = movieDBResponse.results
    .where((moviedb) => moviedb.posterPath != 'no-poster' )
    .map(
      (moviedb) => MovieMapper.movieDBToEntity(moviedb)
    ).toList();

    return movies;

  }

  @override
  Future<String> login(String identifer, String password) async {
    var headers = {
      'Content-Type': 'application/json'
    };
    var data = json.encode({
      "identifier": "alxswww",
      "password": "12345aA\$"
    });

    var response = await dio.request(
      'http://140.84.161.161:8080/stockmaster/auth/signin',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );

    if (response.statusCode == 200) {
      print(json.encode(response.data));
    }
    else {
      print(response.statusMessage);
    }
    throw UnimplementedError();
  }

  @override
  Future<String> register(String identifier, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<String> logout() {
    // TODO: implement logout
    return null;//throw UnimplementedError();
  }


}