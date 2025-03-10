import 'package:flutter/material.dart';

import '../../../cores/constants/app_assets.dart';
import '../../home/pages/homepage1.dart';

class Mercurydetails extends StatelessWidget {
  static String routeName= "mercury";
  const Mercurydetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                        child: Text("Mercury",
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
                padding: const EdgeInsets.symmetric(vertical: 160.0,horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                          AppAssets.mercury,
                        height: 360,
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
                      child: Text("Distance from Sun (km) : 57,910,000",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const SizedBox(
                      child: Text("Mercury is the smallest and closest planet to the Sun in our solar system. "
                          "It has a thin atmosphere, causing extreme temperature variations between day and night. "
                          "Due to its weak magnetic field and lack of a substantial atmosphere, "
                          "Mercury experiences intense solar radiation and harsh surface conditions. "
                          "Despite this, its rocky surface and craters provide insights into the early solar system.",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const SizedBox(
                      child: Text("Length of Day (hours) : 4222.6",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(
                      child: Text("Orbital Period (Earth years) : 0.24",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(
                      child: Text("Radius (km) :  2,439.7",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(
                      child: Text("Mass (kg) : 3.30 × 10²³",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(
                      child: Text("Gravity (m/s²) : 3.7",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(
                      child: Text("Surface Area (km²) : 7.48 × 10⁷",
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
