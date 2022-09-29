import 'package:flutter/material.dart';
import 'package:poke_modular/pages/pokemon_page.dart';
import 'package:poke_modular/widgets/pokemon_image.dart';

class PokemonContainer extends StatelessWidget {
  final String imgUrl;
  const PokemonContainer({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PokemonPage(
              imgUrl: imgUrl,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        constraints: const BoxConstraints(minWidth: 100, maxWidth: 200),
        width: MediaQuery.of(context).size.width / 2,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: PokemonImage(imgUrl: imgUrl),
      ),
    );
  }
}
