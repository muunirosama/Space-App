import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
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
          leading: BackButton(
            color: Colors.white,
          ),
          title:  Text(
            planet.name,
            style: TextStyle(
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
                    SizedBox(height: 10,),
                    Text(
                            planet.title,
                            style: TextStyle(
                            color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                    SizedBox(height: 12,),
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                            planet.image
                        ),
                      ),
                  //   Expanded(
                  //     child: ModelViewer(
                  //       src: planet.model,
                  //       alt: 'A 3D model of an astronaut',
                  //       ar: true, autoRotate: true,
                  //       disableZoom: true,
                  //       iosSrc: planet.model,
                  //     ),
                  // ),
                        SizedBox(
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
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                        ),
                    const SizedBox(height: 16),
                        SizedBox(
                          child: Text(
                            "distanceFromSun: ${planet.distanceFromSun}",
                            style: TextStyle(
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
                            style: TextStyle(
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
                            style: TextStyle(
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
                            style: TextStyle(
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
                            style: TextStyle(
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
                            style: TextStyle(
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
              ),
            ),
        ),
      );
  }
}

