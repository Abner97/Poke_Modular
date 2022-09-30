import 'package:poke_modular/features/pokemon/widgets/moves.dart';
import 'package:poke_modular/shared/models/move.dart';
import 'package:poke_modular/shared/models/sprites.dart';

class PokemonData {
  Sprites? _sprites;
  List<Move>? moves;

  set setSprites(Sprites? value) {
    _sprites = value;
  }

  get getSprites => _sprites;

  set setMoves(List<Move> moves) {
    this.moves = moves;
  }

  get getMoves => moves;
}
