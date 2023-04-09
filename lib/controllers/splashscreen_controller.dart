import 'package:bet_corner/pages/auth_page.dart';
import 'package:get/get.dart';



class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async{
    await Future.delayed(const Duration(milliseconds: 500),);
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000),);
    Get.to(() =>  const AuthPage());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));

  }
}