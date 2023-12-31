<<<<<<< HEAD
// import 'package:app_cine/domain/entities/movie.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// class MovieScreen extends ConsumerStatefulWidget {
//   static const name = 'movie-screen';
//   final String movieId;
//   const MovieScreen({super.key, required this.movieId});
//  
//   @override
//   ConsumerState<ConsumerStatefulWidget> createState()  => MovieScreenState();
//  
//
//  
// }
//
// class MovieScreenState extends ConsumerState<MovieScreen> {
//   @override
//   void initState() {
//     super.initState();
//     ref.read(movieInfoProvider.notifier).loadMovie(widget.movieId);
//     ref.read(actorsByMovieProvider.notifier).loadActors(widget.movieId);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final Movie? movie = ref.watch(movieInfoProvider)[widget.movieId];
//
//     if (movie == null) {
//       return const Scaffold(
//         body:Center(
//           child: CircularProgressIndicator(
//             strokeWidth: 2,
//           )
//         )
//       );
//     }
//     return Scaffold(
//       body: CustomScrollView(
//         physics: const ClampingScrollPhysics(),
//         slivers: [
//           _CustomAppBar(movie: movie),
//           SliverList(
//             delegate: SliverChildListDelegate([
//               _PosterAndTitle(movie: movie),
//               _Overview(movie: movie),
//               CastingCards(movieId: movie.id)
//             ])
//           )
//         ],
//        
//       )
//     );
//   }
// }
//
// class _MovieDetails extends StatelessWidget {
//   final Movie movie;
//   const _MovieDetails({required this.movie});
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final textStyles = Theme.of(context).textTheme;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(padding: const EdgeInsets.all(8),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: FadeInImage(
//                 placeholder: const AssetImage('assets/no-image.jpg'),
//                 image: NetworkImage(
//                   movie.posterPath,
//                   width),
//                 height: 150,
//               ),
//             ),
//           ],
//         ),)
//       ],
//     );
//   }
// }
=======
import 'package:app_cine/domain/entities/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieScreen extends ConsumerStatefulWidget {
  static const name = 'movie-screen';
  final String movieId;
  const MovieScreen({super.key, required this.movieId});
  
  @override
  ConsumerState<ConsumerStatefulWidget> createState()  => MovieScreenState();
  

  
}

class MovieScreenState extends ConsumerState<MovieScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(movieInfoProvider.notifier).loadMovie(widget.movieId);
    ref.read(actorsByMovieProvider.notifier).loadActors(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    final Movie? movie = ref.watch(movieInfoProvider)[widget.movieId];

    if (movie == null) {
      return const Scaffold(
        body:Center(
          child: CircularProgressIndicator(
            strokeWidth: 2,
          )
        )
      );
    }
    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          _CustomAppBar(movie: movie),
          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndTitle(movie: movie),
              _Overview(movie: movie),
              CastingCards(movieId: movie.id)
            ])
          )
        ],
        
      )
    );
  }
}

class _MovieDetails extends StatelessWidget {
  final Movie movie;
  const _MovieDetails({required this.movie});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyles = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  movie.posterPath,
                  width: size.width * 0.3,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: (size.width - 40) * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: textStyles.titleLarge,
                    ),
                    Text(movie.overview),
                  ],
                ),
              )
            ],
          ),
        ),
      Padding(
        padding: const EdgeInsets.all(8),
        child: Wrap(
          children: [
            ...movie.genreIds.map((gender) => Container(
              margin: const EdgeInsets.only(right: 10),
              child: Chip(label: Text(gender),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
              ),
            ) )
          ],
        ),
        ),
        _ActorsByMovie(movieId: movie.id).toString(),
        const SizedBox(height: 50,)
      ],
      
    );
  }
}

class _ActorsByMovie extends ConsumerWidget {
  final String movieId;
  const _ActorsByMovie({required this.movieId});

  @override
  Widget build(BuildContext context, ref) {
    final actorsByMovie = ref.watch(actorsByMovieProvider);

    if (actorsByMovie[movieId] == null) {
      return const CircularProgressIndicator(strokeWidth: 2,);
    }

    final actors = actorsByMovie[movieId]!;
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: actors.length,
        itemBuilder: (BuildContext context, int index) => Container(
          padding: const EdgeInsets.all(8.8),
          width: 135,
          child:Columnn
      ),
    );
  }
}
>>>>>>> 218260db471b760a5436c6796e108a0b61462502
