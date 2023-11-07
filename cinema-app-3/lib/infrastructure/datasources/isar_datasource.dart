import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart' show getApplicationDocumentsDirectory;

import '../../domain/datasources/local_storage_datasource.dart';
import '../../domain/entities/movie.dart';



class IsarDatasource extends LocalStorageDatasource {
  
  late Future<Isar> db;

  IsarDatasource() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if ( Isar.instanceNames.isEmpty ) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open([ MovieSchema ], directory: dir.path );
    }

    return Future.value(Isar.getInstance());
  }


  @override
  Future<bool> isMovieFavorite(int movieId) async {
    final isar = await db;

    final Movie? isFavoriteMovie = await isar.movies
      .filter()
      .idEqualTo(movieId)
      .findFirst();

    return isFavoriteMovie != null;
  }

  @override
  Future<void> toggleFavorite(Movie movie) async {
    
    final isar = await db;

    final favoriteMovie = await isar.movies
      .filter()
      .idEqualTo(movie.id)
      .findFirst();

    if ( favoriteMovie != null ) {
      // Borrar
      isar.writeTxn(() => isar.movies.delete( favoriteMovie.isarId! ));
      return;
    }

    // Insertar
    isar.writeTxn(() => isar.movies.put(movie));

  }

  @override
  Future<List<Movie>> loadMovies({int limit = 10, offset = 0}) async {
    
    final isar = await db;

    return isar.movies.where()
      .offset(offset)
      .limit(limit)
      .findAll();
  }

}