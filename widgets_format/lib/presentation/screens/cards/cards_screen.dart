import 'package:flutter/material.dart';
// void main(List<String> args) {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
        
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const CardsScreen(), //BackButton(),
//     );
//   }
// }

const cards = <Map <String,dynamic> >[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 0.1, 'label': 'Elevation 1'},          
  {'elevation': 0.2, 'label': 'Elevation 2'},
  {'elevation': 0.3, 'label': 'Elevation 3'},
  {'elevation': 0.4, 'label': 'Elevation 4'},
  {'elevation': 0.5, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const _CardsView(),
      );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [ //spread operators
          ...cards.map(
            (Card)=>_CardType1(elevation: Card['elevation'], label: Card['label']),
          ),
          ...cards.map(
            (Card)=>_CardType2(elevation: Card['elevation'], label: Card['label']),
          ),
          ...cards.map(
            (Card)=>_CardType3(elevation: Card['elevation'], label: Card['label']),
          ),
          ...cards.map(
            (Card)=>_CardType4(elevation: Card['elevation'], label: Card['label']),
          ),
          const SizedBox(height: 50),
          ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType1({super.key, 
  required this.label, 
  required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.more_vert_outlined),
                )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}
class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType2({super.key, 
  required this.label, 
  required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide(
          color: colors.outline
          )
      ),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.more_vert_outlined),
                )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outlined'),
            ),
          ],
        ),
      ),
    );
  }
}
class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType3({super.key, 
  required this.label, 
  required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.onSurfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: (){}, 
                )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - Filled'),
            ),
          ],
        ),
      ),
    );
  }
}
class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType4({super.key, 
  required this.label, 
  required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      color: colors.onSurfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Stack(
          children: [
            Image.network('https://picsum.photos/id/${elevation.toInt()}/600/350',
            height: 350,
            fit: BoxFit.cover,
            ),

            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,//colors.onSurfaceVariant.withOpacity(0.5),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                ),
                child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: (){}, 
                ))
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - Filled'),
            ),
          ],
        ),
      
      ),
    );
  }
}