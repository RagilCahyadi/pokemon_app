import 'package:flutter/material.dart';
import 'package:pokemon_app/model/pokemon.dart';

class DetailPage extends StatefulWidget {
  final Pokemon pokemon;

  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
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
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, size: 30),
                  ),

                  Column(
                    children: [
                      Text(
                        widget.pokemon.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(46, 58, 89, 1),
                        ),
                      ),
                      Text(widget.pokemon.type),
                    ],
                  ),

                  const SizedBox(width: 48),
                ],
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 400,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.pokemon.type == "Grass"
                        ? const Color.fromRGBO(196, 228, 213, 1)
                        : widget.pokemon.type == "Fire"
                        ? const Color.fromRGBO(239, 221, 186, 1)
                        : const Color.fromRGBO(190, 219, 221, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.network(
                        widget.pokemon.imageUrl,
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
