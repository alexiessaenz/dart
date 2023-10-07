import 'package:app_cine/config/constant/environment.dart';
import 'package:app_cine/domain/entities/movie.dart';
import 'package:dio/dio.dart';

class MovieDbDataSource extends MovieDataSource {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Environment.theMovieDbKey,
      'language': 'en-Mx',
    },
  ));
  
  List<Movie> _jsonToMovies(Map<String, dynamic> json) {
    final movieDBResponse = MovieDbResponse.fromJson(json);
    
    final List<Movie> movies = movieDBResponse.results
    .where((moviedb)=>moviedb.posterPath!='no-poster').map(
      (moviedb) => MovieMapper.movieDBToEntity(moviedb)).toList();
      return movies;
  }

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing', queryParameters: {
      'page': page,
    });
    return _jsonToMovies(response.data);
  }

  @overrride
  Future<List<Movie>> getPopular({int page = 1}) async {
    final response = await dio.get('/movie/popular', 
    queryParameters: {
      'page': page,
    });
    return _jsonToMovies(response.data);
  }

  @overrride
  Future<List<Movie>> getTopRated({int page = 1}) async {
    final response = await dio.get('/movie/top_rated', 
    queryParameters: {
      'page': page,
    });
    return _jsonToMovies(response.data);
  }
}