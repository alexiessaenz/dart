import 'package:app_cine/presentation/widgets/shared/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_cine/presentation/providers/providers.dart';
//import 'package:flutter/material.dart';
import 'package:app_cine/presentation/widgets/widgets.dart';
import 'package:intl/intl.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';




class HomeScreen extends StatelessWidget {

  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {

  @override
  void initState() {
    super.initState();
    
    ref.read( nowPlayingMoviesProvider.notifier ).loadNextPage();
    ref.read( popularMoviesProvider.notifier ).loadNextPage();
    ref.read( topRatedMoviesProvider.notifier ).loadNextPage();
    ref.read( upcomingMoviesProvider.notifier ).loadNextPage();
  }


  @override
  Widget build(BuildContext context) {

    final initialLoading = ref.watch(initialLoadingProvider);
    if ( initialLoading ) return const FullScreenLoader();
    
    final slideShowMovies = ref.watch( moviesSlideshowProvider );
    final nowPlayingMovies = ref.watch( nowPlayingMoviesProvider );
    final popularMovies = ref.watch( popularMoviesProvider );
    final topRatedMovies = ref.watch( topRatedMoviesProvider );
    final upcomingMovies = ref.watch( upcomingMoviesProvider );

    return Localizations.override(
      context: context,
      locale: const Locale('es'),
      child: Builder(
        builder: (context){
          return CustomScrollView(
        slivers: [
    
          const SliverAppBar(
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: CustomAppbar(),
            ),
          ),
    
    
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
                return Column(
                    children: [
                
                      // const CustomAppbar(),
                
                      MoviesSlideshow(movies: slideShowMovies ),
                
                      MovieHorizontalListview(
                        movies: nowPlayingMovies,
                        title: 'En cines',
                        subTitle: today,
                        loadNextPage: () =>ref.read(nowPlayingMoviesProvider.notifier).loadNextPage()
                        
                      ),
                
                      MovieHorizontalListview(
                        movies: upcomingMovies,
                        title: 'Próximamente',
                        subTitle: 'En este mes',
                        loadNextPage: () =>ref.read(upcomingMoviesProvider.notifier).loadNextPage()
                      ),
                
                      MovieHorizontalListview(
                        movies: popularMovies,
                        title: 'Populares',
                        // subTitle: '',
                        loadNextPage: () =>ref.read(popularMoviesProvider.notifier).loadNextPage()
                      ),
                
                      MovieHorizontalListview(
                        movies: topRatedMovies,
                        title: 'Mejor calificadas',
                        subTitle: 'Desde siempre',
                        loadNextPage: () =>ref.read(topRatedMoviesProvider.notifier).loadNextPage()
                      ),
    
                      const SizedBox( height: 10 ),
                
                
                    ],
                  );
            },
            childCount: 1
          )),
    
        ]
      );
        },
      ),
        );
  }

  String get today {
    String dayword = DateFormat.EEEE('Es').format(DateTime.now());
    //final month = DateFormat.MMMM().format(DateTime.now());
    final daynum = DateFormat.d().format(DateTime.now());
    
    //return '$dayword, $month $daynum';
    //return '$dayword $daynum';
    return DateFormat.yMMMMd().format(DateTime.now());

    //return now;
    //now.
    //return '${now.day}  ${now.month} '; //de ${now.year}';
  }
}