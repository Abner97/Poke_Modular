import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonImage extends StatelessWidget {
  const PokemonImage({Key? key, required this.imgUrl}) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'image-key-$imgUrl',
      child: CachedNetworkImage(
        fit: BoxFit.fitHeight,
        placeholder: (context, url) =>
            Center(child: const CircularProgressIndicator()),
        imageUrl: imgUrl,
      ),
    );
  }
}
