import 'package:event_management/view/screen/profile_role/profile_role_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String profileRoleScreen = '/profileRoleScreen';

  static List<GetPage> routes = [
    GetPage(name: profileRoleScreen, page: () => ProfileRoleScreen()),
  ];
}
