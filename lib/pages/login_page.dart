import 'package:flutter/material.dart';
import 'package:firebase_auth/components/my_textfield.dart';

class LoginPage extends StatelessWidget {

  // controller
  final emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key,});

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

          
              // login button
          
              // don;t have an account create one
            ],
          ),
        ),
      ),
    );
  }
}
