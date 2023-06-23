import 'package:dartz/dartz.dart';
import 'package:ossos_test/src/features/pokemons/domain/repositories/pokemon_repo.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/use_case/use_case.dart';
import '../entities/pokemons.dart';

class GetPokemonUC extends UseCase<  List<Pokemon>,int> {
  final PokemonRepo repo;

  GetPokemonUC({required this.repo});
  @override
  Future<Either<Failure, List<Pokemon>>> call(
      {required int param}) async {
    return await repo.getPokemons(pageNumber: param);
  }
}
