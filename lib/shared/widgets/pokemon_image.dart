import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonImage extends StatelessWidget {
  const PokemonImage({Key? key, required this.imgUrl, required this.hero})
      : super(key: key);

  final String? imgUrl;
  final bool hero;
  @override
  Widget build(BuildContext context) {
    return hero
        ? Hero(tag: 'image-key-$imgUrl', child: getImage())
        : getImage();
  }

  getImage() {
    return imgUrl != null
        ? CachedNetworkImage(
            fit: BoxFit.fitHeight,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.camera),
            imageUrl: imgUrl ?? '',
          )
        : SizedBox(height: 0);
  }
}
