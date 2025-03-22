import 'package:flutter/material.dart';
import '../../../cores/constants/app_assets.dart';
import '../../home/pages/homepage1.dart';

class LoginPage extends StatelessWidget {
  static String routeName= "login";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0E0E0E),
        body: Stack(
          children: [
            Image.asset(
                AppAssets.frame1
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  AppAssets.text
                ),
              ),
            ),

            Container(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 342,
                height: 60,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomePage1(),
                        )
                     );
                   },
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.topLeft,
                      padding: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: Color(0xffEE403D),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text("Explore",
                        style: TextStyle(color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white,size: 24,)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
