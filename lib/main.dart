import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_loginpage/routes.dart';

void main() {
  runApp(const RegistrationPage());
}

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.mainmenu,
      getPages: Routes.myPages,
    );
  }
}
