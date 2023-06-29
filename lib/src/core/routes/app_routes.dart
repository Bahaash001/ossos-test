import 'package:get/get.dart';
import 'package:ossos_test/src/features/home/presentations/pages/animations_screen.dart';
import 'package:ossos_test/src/features/home/presentations/pages/home_screen.dart';
import 'package:ossos_test/src/features/pokemons/presentation/pages/pokemons_screen.dart';

import '../../features/spalsh/pages/spalsh_screen.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: SplashScreen.route,
      page: () => const SplashScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: HomeScreen.route,
      page: () => const HomeScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AnimationsScreen.route,
      page: () => const AnimationsScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: PokemonsScreen.route,
      page: () => const PokemonsScreen(),
      transition: Transition.cupertino,
    ),
  ];
}
