import 'package:flutter/cupertino.dart';

class ChessPuzzle extends ChangeNotifier {
  final String puzzle;
  final List solution;
  final String description;
  final bool isWhiteToMove;
  String? playersName;

  ChessPuzzle(
      {
      required this.isWhiteToMove,
      required this.description,
      required this.puzzle,
      required this.solution,
      this.playersName});
}
