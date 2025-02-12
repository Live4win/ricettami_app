import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 46,
            children: [
              Image.asset(
                'assets/full_ricettami_logo.png',
                width: 256,
              ),
              //Spacer(),
              SizedBox(
                width: 256,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisSize: MainAxisSize.min,
                  spacing: 24,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8,
                      children: [
                        Text('Email'),
                        TextField(
                          controller: controller.emailController,
                          decoration: InputDecoration(
                            hintText: 'Inserisci la mail',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8,
                      children: [
                        Text('Password'),
                        TextField(
                          controller: controller.passwordController,
                          decoration: InputDecoration(
                            hintText: 'Inserisci la password',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            /*focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors
                                    .blue, // Change this to your desired color
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors
                                    .grey, // Change this to your desired color
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),*/
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () => controller.forgotPassword(),
                      child: Text(
                        'Password dimenticata?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 16,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            controller.login();
                          },
                          child: Text('Login'),
                          style: ButtonStyle(
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.register();
                          },
                          child: Text('Register'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
