import 'package:dartz/dartz.dart';
import 'package:ossos_test/src/core/errors/failures.dart';
import 'package:ossos_test/src/features/pokemons/domain/entities/pokemons.dart';

abstract class PokemonRepo {
  Future<Either<Failure, List<Pokemon>>> getPokemons({required int pageNumber});
}
