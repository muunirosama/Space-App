import 'package:flutter/material.dart';
import 'package:space_app/models/planets.dart';
import 'features/home/pages/homepage1.dart';
import 'features/login/pages/login page.dart';
import 'features/planetdetails/pages/planetDetails.dart';

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

        PlanetDetails.routeName:(BuildContext context){
          var planet= ModalRoute.of(context)!.settings.arguments as PlanetModel;
          return  PlanetDetails(
            planet:planet,
          );
        },

      },
    );
  }
}