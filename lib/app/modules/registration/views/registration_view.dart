import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.min,
          spacing: 80,
          children: [
            Image.asset(
              'assets/full_ricettami_logo.png',
              width: 256,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black.withValues(alpha: 0.1 * 255),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
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
                      Image.asset(
                        'assets/full_ricettami_logo.png',
                        width: 256,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            /*Column(
              spacing: 24,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Inserisci la password',
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
              ],
            )
            */
          ],
        ),
      ),
    );
  }
}
