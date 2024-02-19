import 'package:flutter/material.dart';
import 'core/constants.dart';
import 'presentation/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: primaryBlack)
            .copyWith(secondary: primaryBlack),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}