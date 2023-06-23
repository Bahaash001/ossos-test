import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test/src/core/constant/api.dart';
import 'package:ossos_test/src/core/widgets/cached_image.dart';
import 'package:ossos_test/src/core/widgets/custom_text.dart';
import 'package:ossos_test/src/features/pokemons/domain/entities/pokemons.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key, required this.pokemon});
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        elevation: 8,
        child: Container(
          width: Get.width * 0.8,
          height: Get.height * 0.2,
      
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width * 0.3,
                child: cachedImage(getPokemonImage(pokemon.imageId),
                    imageBuilder: (context, imageProvider) => Container(
                          width: Get.width * 0.3,
                          height: Get.height * 0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(image: imageProvider)),
                        )),
              ),
              SizedBox(width: Get.width * 0.02),
              CusSizedText(
                text: pokemon.name,
                size: 20,
                color: Colors.black,
                weight: FontWeight.bold,
              )
            ],
          ),
        ),
      ),
    );
  }
}
