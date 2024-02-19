// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/landing/landing_screen.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController ipController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isRemember = false;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [kBlack, kWhite],
          ),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LoginTextFormFiled(
                  head: "URL/IP Address",
                  controller: ipController,
                ),
                kHeight10,
                LoginTextFormFiled(
                  head: "Username",
                  controller: usernameController,
                ),
                kHeight10,
                LoginTextFormFiled(
                  head: "Password",
                  controller: passwordController,
                ),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: isRemember,
                      onChanged: (value) {
                        setState(() {
                          isRemember = !isRemember;
                        });
                      },
                      fillColor: MaterialStatePropertyAll(
                          Colors.black.withOpacity(0.2)),
                    ),
                    kWidth10,
                    smallHeadTextWhite(
                      "Remember",
                    ),
                  ],
                ),
                kHeight20,
                ElevatedButton(
                    onPressed: () async {
                      if (_formkey.currentState!.validate()) {
                        // final shareprf = await SharedPreferences.getInstance();
                        // await shareprf.setBool(userlogin, true);
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return const LandingScreen();
                          },
                        ));
                      } else {
                        print('error');
                      }
                    },
                    child: const Text("Login"))
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class LoginTextFormFiled extends StatelessWidget {
  const LoginTextFormFiled(
      {super.key, required this.head, required this.controller});
  final String head;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        smallHeadTextWhite(head),
        kHeight10,
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
              fillColor: kWhite.withOpacity(0.6),
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5))),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'The $head is emty';
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}
