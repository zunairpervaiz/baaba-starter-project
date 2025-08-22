import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'routes.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: Routes.splash,
      page: () => const Scaffold(body: Center(child: Text('Splash'))),
    ),
  ];
}
