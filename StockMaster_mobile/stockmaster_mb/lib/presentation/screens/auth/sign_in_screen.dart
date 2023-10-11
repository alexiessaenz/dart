import 'package:flutter/material.dart';
import 'package:stockmaster_mb/config/themes/app_theme.dart';
import 'package:stockmaster_mb/presentation/widgets/text_form_field.dart';
import 'package:animate_do/animate_do.dart';
import 'package:go_router/go_router.dart';

// void main(List<String> args) => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: AppTheme(
  //       selectedColor: 3).getTheme(),
      /* ThemeData(
//         primarySwatch : Colors.blue,
//         colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
//       ), */
//       home: const SignInScreen(),
    
//     );
//   }
// }

class SignInScreen extends StatefulWidget {
  static const String name = 'signin_screen';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
    bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In',),
        elevation: 2),
       // backgroundColor: Colors.transparent,
      
      body: SingleChildScrollView(
        child: Stack(
          children: [
          //padding: const EdgeInsets.all(8.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.inversePrimary,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),]
            ),
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 16,vertical:120),
            alignment: Alignment.center,
            child:   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('  Sign In ',style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 24,fontWeight: FontWeight.normal),),
                const SizedBox(height: 48,),
                 MyTextFormField(
                  label: 'Email | Username',
                  hint: 'Enter your email',
                  helperText: 'We will never share your email with anyone else.',),
                const SizedBox(height: 32,),
                 MyTextFormField(
                  label: 'Password',
                  hint: 'Enter your password',
                  helperText: 'We will never share your password with anyone else.',),
                
                const SizedBox(height: 16,),
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot Password?'),
                ),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    FilledButton.icon(
                        onPressed: () {
                          
                          deflattedpushroute();
                          //context.push('/stored-screen');
                        },
                        icon: isLoading 
                              ? SpinPerfect(
                                infinite: true,
                                child: const Icon(Icons.refresh_rounded)
                              )
                              : FadeIn(child: const Icon(Icons.arrow_back_ios_new_outlined)),
                        label: const Text('Submit'),
                    ),
                    OutlinedButton(
                        onPressed: () {context.push('/');}, child: const Text('Cancel')),
                    
                  ],
                ),
                
                              
              ],
            ),
              
          ),
        ]),
      ),
        
      
    );
  }

  Future deflattedpushroute() async {
    isLoading = true;
    setState(() { },);
    await Future.delayed(const Duration(milliseconds: 750), () {
        isLoading = false;
        setState(() { },);
        context.push('/stored-screen');
    });
        
  }

    //supporting text
    TextFormField _textFormField() {
      return TextFormField(
        obscureText: true,
        style: const TextStyle(
          fontSize: 20,
        ),
        decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          helperText: 'We will never share your email with anyone else.',
          border: OutlineInputBorder(),
        ),
      );
    }
}