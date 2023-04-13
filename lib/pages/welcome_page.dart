import 'package:flutter/material.dart';
import 'package:travel_booking/widgets/app_large_text.dart';
import 'package:travel_booking/widgets/app_text.dart';
import 'package:travel_booking/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png'
  ]; //Images to be shown at the screen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/' + images[index]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: 'Trips', size: 36),
                        AppText(text: 'Mountains', size: 36),
                        SizedBox(height: 20),
                        Container(
                          width: 250,
                          child: AppText(
                              text:
                                  'Mountain hikes give yuou an incredible sense of freedom along with endurance test'),
                        ),
                        SizedBox(height: 40),
                        ResponsiveButton(
                          width: 120,
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (index) {
                        return Container();
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
