import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test/core/pagination/pagination_list_view.dart';
import 'package:ossos_test/features/pokemons/presentation/manager/pokemon_controller.dart';
import 'package:ossos_test/features/pokemons/presentation/widgets/pokemon_card.dart';

class PokemonsScreen extends GetView<PokemonController> {
  const PokemonsScreen({super.key});
  static const String route = '/pokemons';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pokemon's")),

      body: PaginationListView(
        
        controller: controller,
        itemBuilder: (ctx, index) =>
            PokemonCard(pokemon: controller.getData[index]),
      ),
    );
  }
}
