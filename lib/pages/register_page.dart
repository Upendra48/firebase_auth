import 'package:firebase_auth/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  // controller
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  final void Function()? onTap;

  RegisterPage({
    super.key,
    this.onTap,
  });

  //login method
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 10),

              //app name
              const Text(
                'Firebase Auth',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 30),

              // username textfield
              MyTextfield(
                hintText: 'Username',
                obscureText: false,
                controller: usernameController,
              ),

              const SizedBox(height: 10),

              // email textfield
              MyTextfield(
                hintText: 'Email',
                obscureText: false,
                controller: emailController,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextfield(
                hintText: 'Password',
                obscureText: true,
                controller: passwordController,
              ),


              const SizedBox(height: 10),

              // confirm password textfield
              MyTextfield(
                hintText: 'Confirm Password',
                obscureText: true,
                controller: confirmPasswordController,
              ),

              const SizedBox(height: 10),

              // forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password?',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                ],
              ),

              // Register button
              MyButton(text: 'Register', onTap: register),

              // don;t have an account create one
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? ',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text('Login here',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        )),
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
