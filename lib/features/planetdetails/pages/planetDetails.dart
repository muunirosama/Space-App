import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:space_app/models/planets.dart';

class PlanetDetails extends StatelessWidget {
  static String routeName= "earth";
  final PlanetModel planet;
  const PlanetDetails({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: const BackButton(
            color: Colors.white,
          ),
          title:  Text(
            planet.name,
            style: const TextStyle(
           color: Colors.white,
           fontSize: 24,
           fontWeight: FontWeight.bold
            ),
          ),
        ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    Text(
                            planet.title,
                            style: const TextStyle(
                            color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                    const SizedBox(height: 12,),

                Align(
                  alignment: Alignment.center,
                  child: ZoomIn(
                    duration: const Duration(seconds: 5),
                    animate: true,
                    child: Spin(
                      duration: const Duration(seconds: 5),
                      infinite: true,
                      child: Image.asset(
                        planet.image,
                        width: 400,
                        height: 400,
                      ),
                    ),
                  ),
                ),
                        const SizedBox(
                          child: Text(
                            "About",
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                        const SizedBox(height: 16),
                         SizedBox(
                          child: Text(
                            planet.about,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                        ),
                    const SizedBox(height: 16),
                        SizedBox(
                          child: Text(
                            "distanceFromSun: ${planet.distanceFromSun}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                         SizedBox(
                          child: Text(
                            "lengthOfDay: ${planet.lengthOfDay}" ,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                         SizedBox(
                          child: Text(
                            "orbitalPeriod: ${planet.orbitalPeriod}" ,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                         SizedBox(
                          child: Text(
                            "radius: ${planet.radius}" ,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                         SizedBox(
                          child: Text(
                            "mass:${planet.mass }",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                         SizedBox(
                          child: Text(
                           "gravity:${planet.gravity}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                         SizedBox(
                          child: Text(
                            "surfaceArea:${planet.surfaceArea}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
        ),
      );
  }
}

