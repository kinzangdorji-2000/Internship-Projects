import 'package:flutter/material.dart';
import 'package:pms_app/screens/app_utils.dart';
import 'package:pms_app/screens/login.dart';
import 'package:pms_app/screens/widgets/input_field_widget.dart';
import 'package:pms_app/screens/widgets/login_page.dart';
import 'dart:js';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Performance',
                  style: TextStyle(
                    color: colorBlack,
                    fontSize: 25.0,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Center(
                child: Text(
                  'Management System',
                  style: TextStyle(
                    color: colorBlack,
                    fontSize: 25.0,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Center(
                child: Text(
                  'Please enter your details',
                  style: TextStyle(
                    color: colorBlack,
                    fontSize: 14.0,
                    fontFamily: fontFamily,
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              inputField(
                controller: nameController,
                icon: Icons.person,
                hintText: "Enter your name",
              ),
              const SizedBox(
                height: 15.0,
              ),
              inputField(
                controller: emailController,
                icon: Icons.email,
                hintText: "Enter your email",
              ),
              const SizedBox(
                height: 15.0,
              ),
              inputField(
                controller: passwordController,
                icon: Icons.lock,
                hintText: "Enter your password",
                obscureText: true,
              ),
              const SizedBox(
                height: 15.0,
              ),
              inputField(
                controller: passwordConfirmController,
                icon: Icons.lock,
                hintText: "Confirm your password",
                obscureText: true,
              ),
              const SizedBox(
                height: 25.0,
              ),
              LogInPage(
                text: "Sign Up", onPressed: () { 
                  if (isValidate()){
                    print("Data is validated");
                  }
                 },
              ),
               const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: colorBlack,
                      fontFamily: fontFamily,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                    child: const Text(
                      "Sign In",
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


bool isValidate() {
  // ignore: prefer_typing_uninitialized_variables
  var nameController;
  if (nameController.text.isEmpty) {
    showScaffold(context as BuildContext, "Please enter your name");
    return false;
  }
  // ignore: prefer_typing_uninitialized_variables
  var emailController;
  if (emailController.text.isEmpty) {
    showScaffold(context as BuildContext, "Please enter your email");
    return false;
  }
  // ignore: prefer_typing_uninitialized_variables
  var passwordController;
  if (passwordController.text.isEmpty) {
    showScaffold(context as BuildContext, "Please enter your password");
    return false;
  }
  // ignore: prefer_typing_uninitialized_variables
  var passwordConfirmController;
  if (passwordConfirmController.text.isEmpty) {
    showScaffold(context as BuildContext, "Please confirm your password");
    return false;
  }
  
  
  return true; 
}
