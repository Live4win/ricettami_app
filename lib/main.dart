import 'package:flutter/material.dart';

import 'core_packages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Use with Google Fonts package to use downloadable fonts
  TextTheme textTheme = createTextTheme("Inter", "Inter");

  MaterialTheme theme = MaterialTheme(textTheme);
  AppDatabase.init();

  runApp(
    GetMaterialApp(
      title: "Ricettami",
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: ThemeMode.light,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
