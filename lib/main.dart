import 'package:flutter/material.dart';
import 'features/home/pages/homepage1.dart';
import 'features/home/pages/homepage2.dart';
import 'features/login/pages/login page.dart';
import 'features/planetdetails/pages/earthdetails.dart';
import 'features/planetdetails/pages/mercurydetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName:(BuildContext context){
          return const LoginPage();
        },
        HomePage1.routeName:(BuildContext context){
          return const HomePage1();
        },
        HomePage2.routeName:(BuildContext context){
          return const HomePage2();
        },
        EarthDetails.routeName:(BuildContext context){
          return const EarthDetails();
        },
        Mercurydetails.routeName:(BuildContext context){
          return const Mercurydetails();
        },
      },
    );
  }
}