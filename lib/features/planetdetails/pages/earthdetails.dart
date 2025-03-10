import 'package:flutter/material.dart';
import '../../../cores/constants/app_assets.dart';
import '../../home/pages/homepage1.dart';

class EarthDetails extends StatelessWidget {
  static String routeName= "earth";
  const EarthDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Stack(
            children: [
                 Image.asset(
                  AppAssets.frame3,
                ),
               Padding(
                 padding: const EdgeInsets.only(top: 35),
                 child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   CircleAvatar(
                     backgroundColor: const Color(0xffEE403D),
                     child: IconButton(
                       onPressed: () {
                         Navigator.of(context).push(
                             MaterialPageRoute(
                               builder: (context) => const HomePage1(),
                             )
                         );
                       },
                       icon: const Icon(Icons.arrow_back, color: Colors.white),
                     ),
                   ),

                   const Flexible(
                     child: Align(
                       alignment: Alignment.topCenter,
                       child: Text("Earth",
                         style: TextStyle(
                       color: Colors.white,
                       fontSize: 32,
                       fontWeight: FontWeight.bold
                       ),
                       ),
                     ),
                   ),
                 ],
                 ),
               ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 160.0,horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      child: Text("Earth: Our Blue Marble",
                        style: TextStyle(
                        color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    const SizedBox(height: 4),

                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        AppAssets.earth2
                      ),
                    ),
                    const SizedBox(
                      child: Text("About",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    const SizedBox(
                      child: Text("Distance from Sun (km) : 149598026",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const SizedBox(
                      child: Text("Earth is the only known planet in the universe that supports life. "
                          "Its unique combination of factors, including liquid water, "
                          "a breathable atmosphere, and a suitable distance from the Sun, "
                          "has created the ideal conditions for the development of complex organisms. "
                          "Earth's magnetic field protects it from harmful solar radiation, "
                          "and its atmosphere helps to regulate temperature and weather patterns.",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const SizedBox(
                      child: Text("Length of Day (hours) : 23.93",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(
                      child: Text("Orbital Period (Earth years) : 1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(
                      child: Text("Radius (km) : 6371",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(
                      child: Text("Mass (kg) : 5.972 × 10²⁴",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(
                      child: Text("Gravity (m/s²) : 9.81",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(
                      child: Text("Surface Area (km²) : 5.10 × 10⁸",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
