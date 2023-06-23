import 'package:dartz/dartz.dart';
import 'package:ossos_test/src/core/constant/strings.dart';
import 'package:ossos_test/src/core/errors/exceptions.dart';

import 'package:ossos_test/src/core/errors/failures.dart';
import 'package:ossos_test/src/core/functions/check_connection.dart';
import 'package:ossos_test/src/features/pokemons/data/datasources/pokemon_remote_ds.dart';

import 'package:ossos_test/src/features/pokemons/domain/entities/pokemons.dart';

import '../../domain/repositories/pokemon_repo.dart';

class PokemonRepoImpl extends PokemonRepo {
  final PokemonRemoteDataSouce pokemonRemoteDataSouce;

  PokemonRepoImpl(this.pokemonRemoteDataSouce);
  @override
  Future<Either<Failure, List<Pokemon>>> getPokemons(
      {required int pageNumber}) async {
    if (await noConnection()) return Left(NetworkFailure(noInternetConnection));
    try {
      final data =
          await pokemonRemoteDataSouce.getPokemons(pageNumber: pageNumber);
      return Right(data);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(UnknownFailure(anErrorOccurred));
    }
  }
}
