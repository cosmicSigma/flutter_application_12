import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_12/features/auth/presentation/components/text_field_comp.dart';
import 'package:flutter_application_12/service_locator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.475,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(
                  controller: nameController,
                  hintText: "Full name",
                ),
                CustomTextField(
                  controller: emailController,
                  hintText: "Email",
                ),
                CustomTextField(
                  controller: birthDateController,
                  hintText: "Birth Date",
                ),
                CustomTextField(
                  controller: passwordController,
                  hintText: "Password",
                  isObscure: true,
                ),
                ElevatedButton(
                    onPressed: () {
                      final result = authController.registration(
                          emailController,
                          nameController,
                          birthDateController,
                          passwordController);

                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(result['message'] ?? "")));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        minimumSize: Size(double.infinity, 55),
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    child: Text("Sign up"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    birthDateController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
