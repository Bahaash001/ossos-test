import 'package:ossos_test/features/pokemons/domain/entities/pokemons.dart';

class PokemonModel extends Pokemon {
  PokemonModel({required super.name, required super.imageId});

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    String url = json["url"];
    String imageId = url.substring(34 , url.length-1 );
    return PokemonModel(name: json["name"], imageId: imageId);
  }

  static List<PokemonModel> listFromEntity(List list) {
    return list.map((e) => PokemonModel.fromJson(e)).toList();
  }
}
