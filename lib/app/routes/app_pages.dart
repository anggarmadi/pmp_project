import 'package:get/get.dart';

import '../modules/class/bindings/class_binding.dart';
import '../modules/class/views/class_view.dart';
import '../modules/guidance/bindings/guidance_binding.dart';
import '../modules/guidance/views/guidance_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.CLASS,
      page: () => ClassView(),
      binding: ClassBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.GUIDANCE,
      page: () => GuidanceView(),
      binding: GuidanceBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
