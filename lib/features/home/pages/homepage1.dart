import 'package:flutter/material.dart';
import 'package:space_app/models/planets.dart';
import '../../../cores/constants/app_assets.dart';
import '../../../cores/themes/app_colors.dart';
import '../../planetdetails/pages/earthdetails.dart';
import 'homepage2.dart';

class HomePage1 extends StatelessWidget {
  static String routeName= "home1";
  const HomePage1({super.key});

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
                      Spacer(),
                      const SizedBox(height: 150),
                       Image.asset(
                             AppAssets.earth,
                           ),
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: AppColors.primaryColor,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_back, color: Colors.white),
                              ),
                                  ),
                                  const Text("Earth",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                              ),
                                  ),

                                  CircleAvatar(
                                    backgroundColor: AppColors.primaryColor,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const HomePage2(),
                                      )
                                  );
                                },
                                icon: const Icon(Icons.arrow_forward, color: Colors.white),
                              ),
                                  ),
                                ],
                              ),
                            ),
                        const Spacer(),

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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const EarthDetails(),
                                        )
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Explore Earth",
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
