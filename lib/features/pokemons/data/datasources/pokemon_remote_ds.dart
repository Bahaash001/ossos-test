import 'package:dio/dio.dart';
import 'package:ossos_test/features/pokemons/data/models/pokemon_model.dart';

import '../../../../core/constant/strings.dart';
import '../../../../core/errors/error_hdl.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/helper/dio_helper.dart';

abstract class PokemonRemoteDataSouce {
  Future<List<PokemonModel>> getPokemons({required int pageNumber});
}

class PokemonRemoteDataSourceImpl extends PokemonRemoteDataSouce {
  final DioHelper client;

  PokemonRemoteDataSourceImpl(this.client);
  @override
  Future<List<PokemonModel>> getPokemons({required int pageNumber}) async {
    try {
      const path = 'pokemon';
      final response = await client.get(
          path: path,
          queryParameters: {"offset": pageNumber, "limit": 25},
          auth: false);

      if (response.statusCode == 200) {
        final responseModel =
            PokemonModel.listFromEntity(response.data["results"]);
        return responseModel;
      } else {
        throw anErrorOccurred;
      }
    } on DioException catch (e) {
      throw ServerException(handleError(e));
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
