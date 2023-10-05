import 'package:flutter/material.dart';

void main(List<String> args) =>
  runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ButtonsScreen(), //BackButton(),
    );
  }
}

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: (){
          Navigator.of(context).pop();
        }
        ),
      );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme; 
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20), 
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton( onPressed: (){}, child: const Text('Elevated')), //1
            const ElevatedButton( //2
              onPressed: null, 
              child: const Text('Elevated Disabled')
            ),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon')
            ),
            FilledButton( onPressed: (){}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.accessibility_new), 
              label: const Text('Filled Icon')
            ),
            OutlinedButton( onPressed: (){}, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.terminal), 
              label: const Text('Filled Icon')
            ),
            TextButton( onPressed: (){}, child: const Text('Text')),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.account_box_outlined), 
              label: const Text('Filled Icon')
            ),
            const CustomButton(),
            IconButton( onPressed: (){}, icon: const Icon(Icons.app_registration_rounded),), //child: const Text('Icon')),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration_rounded), 
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              ),
            ),
            //const CustomButton(),
          ],
        ),
      )
    );
    
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:  Text('Hola Mundo', style: TextStyle(color: Colors.white),),
          ),
        ),
      )
    );
  }
}