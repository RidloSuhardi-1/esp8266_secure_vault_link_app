import 'package:flutter/material.dart';

import '../../res/colors/color.dart';
import 'home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            width: 120.0,
            child: Image.asset("assets/images/icon.png"),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("SecureVault",
                  style: TextStyle(
                      color: kTitleSecondaryColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700)),
              const SizedBox(width: 5.0),
              SizedBox(
                  width: 41.0,
                  child: Image.asset("assets/images/link-img.png")),
            ],
          ),
        ]),
      ),
    );
  }
}
