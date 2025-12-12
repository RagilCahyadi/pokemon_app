import 'package:flutter/material.dart';
import 'package:pokemon_app/model/pokemon.dart';
import 'package:pokemon_app/shared/widget/pokemon_card_widget.dart';

class DetailPage extends StatefulWidget {
  final Pokemon pokemon;

  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final pokemon = widget.pokemon;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  backButton(),
                  headerText(pokemon),
                  const SizedBox(width: 48),
                ],
              ),

              const SizedBox(height: 20),

              pokemonCard(pokemon),
            ],
          ),
        ),
      ),
    );
  }

  Widget backButton() {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back, size: 30),
    );
  }

  Widget headerText(Pokemon pokemon) {
    return Column(
      children: [
        Text(
          pokemon.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(46, 58, 89, 1),
          ),
        ),
        Text(pokemon.type),
      ],
    );
  }

  Widget pokemonCard(Pokemon pokemon) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: PokemonCardWidget(
        type: pokemon.type,
        imageUrl: pokemon.imageUrl,
        showType: false,
      ),
    );
  }
}


