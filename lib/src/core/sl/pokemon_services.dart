import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:ossos_test/src/features/pokemons/data/datasources/pokemon_remote_ds.dart';
import 'package:ossos_test/src/features/pokemons/data/repositories/pokemon_repo_imp.dart';
import 'package:ossos_test/src/features/pokemons/domain/repositories/pokemon_repo.dart';
import 'package:ossos_test/src/features/pokemons/domain/usecases/get_pokemon_uc.dart';

import '../../features/pokemons/presentation/manager/pokemon_controller.dart';

Future<void> initPokemon(GetIt sl) async {
  // Data Sources

  sl.registerLazySingleton<PokemonRemoteDataSouce>(
    () => PokemonRemoteDataSourceImpl(sl()),
  );

  // Use Cases
  sl.registerLazySingleton<GetPokemonUC>(() => GetPokemonUC(repo: sl()));

  // Repository
  sl.registerLazySingleton<PokemonRepo>(() => PokemonRepoImpl(sl()));

  // controller
  Get.lazyPut<PokemonController>(() => PokemonController(getPokemonUC: sl()) , fenix: true);
   


      
}
