import 'package:flutter/material.dart';

class PokemonImage extends StatelessWidget {
  const PokemonImage({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Hero(
          tag: 'image-key-$imgUrl',
          child: Image(
            width: MediaQuery.of(context).size.width,
            image: NetworkImage(imgUrl),
            errorBuilder: (context, error, stackTrace) {
              return Image.asset('assets/no_image.png');
            },
          ),
        ),
      ),
    );
  }
}
