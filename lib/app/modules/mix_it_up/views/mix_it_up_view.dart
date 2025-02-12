import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mix_it_up_controller.dart';

class MixItUpView extends GetView<MixItUpController> {
  const MixItUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MixItUpView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MixItUpView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
