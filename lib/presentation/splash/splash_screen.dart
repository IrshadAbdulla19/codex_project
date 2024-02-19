// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    forNAvigation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/codex_logo.gif"))),
      ),
    );
  }

  // Future<void> loginCheak() async {
  //   final sharepref = await SharedPreferences.getInstance();
  //   final userLogedin = sharepref.getBool(userlogin);
  //   if (userLogedin == null || userLogedin == false) {
  //     forNAvigation();
  //   } else {
  //     await Future.delayed(const Duration(seconds: 4));
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (cntx1) {
  //       // ignore: prefer_const_constructors
  //       return LandingScreen();
  //     }));
  //   }
  // }

  forNAvigation() async {
    await Future.delayed(const Duration(seconds: 4));

    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return const LoginScreen();
      },
    ));
  }
}
