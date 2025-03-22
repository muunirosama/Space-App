import 'package:flutter/material.dart';
import 'package:space_app/models/planets.dart';
import '../../../cores/constants/app_assets.dart';
import '../../../cores/themes/app_colors.dart';
import '../../planetdetails/pages/planetDetails.dart';

class HomePage1 extends StatefulWidget {
  static String routeName= "home1";
  const HomePage1({super.key});
  @override
  State<HomePage1> createState() => _HomePage1State();
}
class _HomePage1State extends State<HomePage1> {
  final PageController pageController = PageController( initialPage: 0 );
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body:  Stack(
              children: [
                Image.asset(
                   AppAssets.frame2
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 200),
                       Expanded(
                         child: PageView.builder(
                           controller: pageController,
                           onPageChanged: (value){
                             currentIndex=value;
                             setState(() {
                             });
                           },
                           scrollDirection: Axis.horizontal,
                           itemCount: PlanetModel.planets.length,
                             itemBuilder: (context, index){
                             var currentPlanet= PlanetModel.planets[index];
                             return Image.asset(currentPlanet.image);
                             }
                         ),
                       ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: AppColors.primaryColor,
                              child: IconButton(
                                onPressed: () {
                                  pageController.previousPage(
                                      duration: Duration(microseconds: 500),
                                      curve: Curves.elasticOut
                                  );
                                },
                                icon: const Icon(Icons.arrow_back, color: Colors.white),
                              ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      PlanetModel.planets[currentIndex].title,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        overflow: TextOverflow.ellipsis
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: AppColors.primaryColor,
                              child: IconButton(
                                onPressed: () {
                                  pageController.nextPage(
                                      duration: Duration(microseconds: 500),
                                      curve: Curves.elasticOut
                                  );
                                },
                                icon: const Icon(Icons.arrow_forward, color: Colors.white),
                              ),
                                  ),
                                ],
                              ),
                            ),
                           SizedBox(height: 50,),
                           Container(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: 380,
                              height: 60,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.all(16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    backgroundColor: Color(0xffEE403D),
                                  ),
                                  onPressed: (){
                                    Navigator.pushNamed(
                                        context,
                                      PlanetDetails.routeName,
                                      arguments: PlanetModel.planets[currentIndex]
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Explore ${PlanetModel.planets[currentIndex].name}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: AppColors.white
                                        ),
                                      ),
                                       Icon(
                                            Icons.arrow_forward, color: AppColors.white,size: 32,
                                       )
                                    ],
                                  ),
                              ),
                            ),
                          ),
                          ]
                        ),
              ],
            ),
        ),
    );
  }
}
