import 'package:ossos_test/src/core/pagination/pagination_controller.dart';
import 'package:ossos_test/src/features/pokemons/domain/entities/pokemons.dart';
import 'package:ossos_test/src/features/pokemons/domain/usecases/get_pokemon_uc.dart';

import '../../../../core/errors/error_hdl.dart';

class PokemonController extends PaginationController<Pokemon> {
  final GetPokemonUC getPokemonUC;

  PokemonController({required this.getPokemonUC});
  @override
  Future<List<Pokemon>> apiCall() async {
    final either = await getPokemonUC(param: super.pageNumber);
    List<Pokemon> list = [];
    either.fold((l) => throw handleErrByType(l), (r) => list = r);
    return list;
  }

  @override
  void onInit() {
    super.fetch();
    super.onInit();
  }
}
