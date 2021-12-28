import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hikayaats/bloc/authentication/auth_cubit.dart';
import 'package:hikayaats/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'screens/authentication/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AuthCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Nunito",
        ),
        routes: {
          // '/': (context)=> Splash(),
          // '/authentication': (context)=> AuthenticationScreen(),
          '/': (context)=> AuthenticationScreen(),
          '/home': (context)=> HomeScreen(),
        },
      ),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
