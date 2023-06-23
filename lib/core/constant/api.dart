const String api = "https://pokeapi.co/api/v2/";
const String imageUrl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/";
String getPokemonImage(String id){ return "$imageUrl$id.png"; }
//https://pokeapi.co/api/v2/pokemon/1/