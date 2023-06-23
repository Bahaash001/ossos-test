import 'package:get_it/get_it.dart';

import 'app_binds.dart';
import 'init_services.dart';
import 'pokemon_services.dart';

final sl = GetIt.instance;

Future<void> initSL() async {
  await initCore(sl);
  await initPokemon(sl);
  initBinds();
}
