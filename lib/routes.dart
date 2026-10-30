import 'package:get/get.dart';
import 'package:project_flutter_loginpage/Pages/Confirmation_registration.dart';
import 'package:project_flutter_loginpage/Pages/registration_page.dart';
import 'package:project_flutter_loginpage/Pages/list_makanan_page.dart';
import 'package:project_flutter_loginpage/Pages/detail_makanan_page.dart';
import 'package:project_flutter_loginpage/Pages/main_menu_page.dart';

class Routes { 
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirm_registration';
  static const String listmakanan = '/list_makanan';
  static const String detailmakanan = '/detail_makanan';
  static const String mainmenu = '/mainmenupage';

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegPage()),
    GetPage(name: listmakanan, page: () => ListMakananPage()),
    GetPage(name: detailmakanan, page: () => DetailMakananPage()),
    GetPage(name: mainmenu, page: () => MainMenuPage()),
  ];
}
