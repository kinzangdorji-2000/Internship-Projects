import 'package:flutter/material.dart';
import 'package:pms_app/screens/app_utils.dart';
import 'package:pms_app/screens/registration.dart';
import 'package:pms_app/screens/widgets/input_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 20.0,
                        height: 10.0,
                        decoration: const BoxDecoration(
                          color: colorBlack,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 1.5,
                      ),
                      Container(
                        width: 20.0,
                        height: 2.0,
                        decoration: const BoxDecoration(
                          color: colorBlack,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    "PMS",
                    style: TextStyle(
                      color: colorBlack,
                      fontFamily: fontFamily,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                "Welcome Back !",
                style: TextStyle(
                  color: colorBlack,
                  fontFamily: fontFamily,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                "Please enter your details below",
                style: TextStyle(
                  fontSize: 14.0,
                  color: colorBlack,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 70.0,
              ),
              inputField(
                controller: emailController,
                hintText: "Enter your email",
                icon: Icons.email,
              ),
              const SizedBox(
                height: 25.0,
              ),
              inputField(
                controller: passwordController,
                hintText: "Enter your password",
                icon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(
                height: 70.0,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colorBlack),
                ),
                onPressed: () {},
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: colorWhite,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: colorBlack,
                      fontFamily: fontFamily,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const RegistrationScreen()));
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: colorBlack,
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
