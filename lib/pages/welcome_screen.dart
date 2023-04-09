import 'package:bet_corner/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../constants/image_strings.dart';
import '../constants/sizes.dart';
import '../constants/text_strings.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
        backgroundColor: isDarkMode ? jSecondaryColor : jPrimaryColor,
        body: Container(
          padding: const EdgeInsets.all(jDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: const AssetImage(jWelcomeScreenImage),
                height: height * 0.6,
              ),
              Column(
                children: [
                  Text(
                    jWelcomeTitle,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Text(
                    jWelcomeSubTitle,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Get.to(() =>  LoginPage());
                      },
                      child: Text(
                        jLogin.toUpperCase(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Get.to(() => const SignUpScreen());
                      },
                      child: Text(
                        jSignup.toUpperCase(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
