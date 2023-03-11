
import 'package:flutter/material.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart';
import 'package:simple_chess_board/models/board_arrow.dart';
import 'package:simple_chess_board/models/board_color.dart';
import 'package:simple_chess_board/widgets/chessboard.dart';



import '../Utils/constrant.dart';

class ChessPlayScreen extends StatefulWidget {
  const ChessPlayScreen({
    super.key,
  });

  @override
  State<ChessPlayScreen> createState() => _ChessPlayScreenState();
}

class _ChessPlayScreenState extends State<ChessPlayScreen> {

  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: Center(
        child: SimpleChessBoard(
          engineThinking: false,
          fen: '1k6/p2KP3/1p6/8/4B3/8/8/8 w - - 0 1',
          onMove: ({required move}) async {
              print('${move.from}|${move.to}|${move.promotion}');
              
            },
          orientation: BoardColor.white,
          whitePlayerType: PlayerType.human,
          blackPlayerType: PlayerType.computer,
          lastMoveToHighlight: BoardArrow(from: 'e2', to: 'e4', color: Colors.blueAccent),
          onPromote: () async{},
        ),
      ),
    );
  }

}

//THE FIRST CHESS BOARD PACKAGE 
// Chessboard(
//           size: gWidth,
//           fen: "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1",
//           onMove: (move) {
//             // optional
//             // TODO: process the move
//             print("move from ${move.from} to ${move.to}");
//           },
//           orientation: Color.WHITE, // optional
//           lightSquareColor:PrimaryColor, // optional
//           darkSquareColor: SecondaryColor, // optional
//         ),


//THE SECOND CHESS BOARD PACKAGE 
// return SimpleChessBoard(
//     engineThinking: false,
//     fen: '1k6/p2KP3/1p6/8/4B3/8/8/8 w - - 0 1',
//     onMove: ({required move}) async {
//         print('${move.from}|${move.to}|${move.promotion}');
        
//     },
//     orientation: BoardColor.white,
//     whitePlayerType: PlayerType.human,
//     blackPlayerType: PlayerType.computer,
//     lastMoveToHighlight: BoardArrow(from: 'e2', to: 'e4', color: Colors.blueAccent),
//     onPromote: () async{},
       
// );
//   }