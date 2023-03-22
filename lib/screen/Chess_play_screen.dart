import 'package:chess/chess.dart' as Chess;
import 'package:chess_vectors_flutter/chess_vectors_flutter.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:wp_chessboard/wp_chessboard.dart';
import '../Utils/constrant.dart';


class ChessPlayScreen extends StatefulWidget {
  bool isWhite;
   ChessPlayScreen({
    super.key,
    required this.isWhite,
  });

  @override
  State<ChessPlayScreen> createState() => _ChessPlayScreenState();
}

class _ChessPlayScreenState extends State<ChessPlayScreen> {
    final controller = WPChessboardController();
  Chess.Chess chess = Chess.Chess();
  List<List<int>>? lastMove;

  @override
  void initState() {
    // TODO: implement initState
    if(widget.isWhite == true){
    chess = Chess.Chess.fromFEN("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
    update();
    }else{
    chess = Chess.Chess.fromFEN("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
    orienatation = BoardOrientation.black;
    update();
    }

    super.initState();
  }

  // not working on drop
  Widget squareBuilder(SquareInfo info) {
    Color fieldColor = (info.index + info.rank) % 2 == 0 ? PrimaryColor : SecondaryColor;
    Color overlayColor = Colors.transparent;

    if (lastMove != null ) {
      if (lastMove!.first.first == info.rank && lastMove!.first.last == info.file) {
        overlayColor =DragableColor.withOpacity(0.5);
      } else if (lastMove!.last.first == info.rank && lastMove!.last.last == info.file) {
        overlayColor = DragableColor.withOpacity(0.7);
      }
    }

    return Container(
      color: fieldColor,
      width: info.size,
      height: info.size,
      child: AnimatedContainer(
        color: overlayColor,
        width: info.size,
        height: info.size,
        duration: const Duration(milliseconds: 200),
      )
    );
  }

  void onPieceStartDrag(SquareInfo square, String piece) {
    showHintFields(square, piece);
  }

  void onPieceTap(SquareInfo square, String piece) {
    if (controller.hints.key == square.index.toString()) {
      controller.setHints(HintMap());
      return;
    }
    showHintFields(square, piece);
  }
  
  void showHintFields(SquareInfo square, String piece) {
    final moves = chess.generate_moves({ 'square': square.toString() });
    final hintMap = HintMap(key: square.index.toString());
    for (var move in moves) {
      String to = move.toAlgebraic;
      int rank = to.codeUnitAt(1) - "1".codeUnitAt(0) + 1;
      int file = to.codeUnitAt(0) - "a".codeUnitAt(0) + 1;

      hintMap.set(rank, file, (size) => MoveHint(
        size: size,
        onPressed: () => doMove(move),
        color: Colors.cyan.withOpacity(.8),
      ));
    }
    controller.setHints(hintMap);
  }

  void onEmptyFieldTap(SquareInfo square) {
    controller.setHints(HintMap());
  }

  void onPieceDrop(PieceDropEvent event) {
    chess.move({ "from": event.from.toString(), "to": event.to.toString() });
    
    lastMove = [
      [ event.from.rank, event.from.file ],
      [ event.to.rank, event.to.file ]
    ];
    
    update(animated: false);
  }

  void doMove(Chess.Move move) {
    chess.move(move);
    
    int rankFrom = move.fromAlgebraic.codeUnitAt(1) - "1".codeUnitAt(0) + 1;
    int fileFrom = move.fromAlgebraic.codeUnitAt(0) - "a".codeUnitAt(0) + 1;
    int rankTo = move.toAlgebraic.codeUnitAt(1) - "1".codeUnitAt(0) + 1;
    int fileTo = move.toAlgebraic.codeUnitAt(0) - "a".codeUnitAt(0) + 1;
    lastMove = [
      [ rankFrom, fileFrom ],
      [ rankTo, fileTo ]
    ];
    if (chess.in_checkmate) {
      QuickAlert.show(
       context: context,
       type: QuickAlertType.success,
       text: "White Won the game",
       title: "CheckMate",
       confirmBtnColor: Colors.white,
       confirmBtnTextStyle: TextStyle(color:DialogColor[0]),
       onConfirmBtnTap: () {
        setState(() {
          
        });
       },
      );
    }
    update();
  }


  


  void update({bool animated = true}) {
    controller.setFen(chess.fen, animation: animated);
  }

  void addArrows() {
    controller.setArrows([
      Arrow(
        from: SquareLocation.fromString("b1"),
        to: SquareLocation.fromString("c3"),
      ),
      Arrow(
        from: SquareLocation.fromString("g1"),
        to: SquareLocation.fromString("f3"),
        color: Colors.red
      )
    ]);
  }

  void removeArrows() {
    controller.setArrows([]);
  }


  BoardOrientation orienatation = BoardOrientation.white;
  void toggleArrows() {
    setState(() {
      if (orienatation == BoardOrientation.white) {
        orienatation = BoardOrientation.black;
      } else {
        orienatation = BoardOrientation.white;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
  ),
        body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          boxShadow: [
                             BoxShadow(
                                color: Colors.black.withOpacity(.5),
                                blurRadius: 20,
                                //spreadRadius: 2,
                                //offset: Offset(5,5)
                              ),
                          ]
                        ),
                    child: WPChessboard(
                      size: gWidth*.97,
                      orientation: orienatation,
                      squareBuilder: squareBuilder,
                      controller: controller,
                      // Dont pass any onPieceDrop handler to disable drag and drop
                      onPieceDrop: onPieceDrop,
                      onPieceTap: onPieceTap,
                      onPieceStartDrag: onPieceStartDrag,
                      onEmptyFieldTap: onEmptyFieldTap,
                      turnTopPlayerPieces: false,
                      ghostOnDrag: true,
                      // dropIndicator: DropIndicatorArgs(
                      //   size: gWidth / 4,
                      //   color: Colors.white.withOpacity(0.24)
                      // ),
                      pieceMap: PieceMap(
                        K: (size) => WhiteKing(size: size),
                        Q: (size) => WhiteQueen(size: size),
                        B: (size) => WhiteBishop(size: size),
                        N: (size) => WhiteKnight(size: size),
                        R: (size) => WhiteRook(size: size),
                        P: (size) => WhitePawn(size: size),
                        k: (size) => BlackKing(size: size),
                        q: (size) => BlackQueen(size: size),
                        b: (size) => BlackBishop(size: size),
                        n: (size) => BlackKnight(size: size),
                        r: (size) => BlackRook(size: size),
                        p: (size) => BlackPawn(size: size),
                      ),
                    ),
                  ),
                ),
                
                // const SizedBox(height: 24),
                // TextButton(
                //   onPressed: setDefaultFen,
                //   child: const Text("Set default Fen"),
                // ),
                // TextButton(
                //   onPressed: setRandomFen,
                //   child: const Text("Set random Fen"),
                // ),
                // TextButton(
                //   onPressed: addArrows,
                //   child: const Text("Add Arrows"),
                // ),
                // TextButton(
                //   onPressed: removeArrows,
                //   child: const Text("Remove Arrows"),
                // ),
                // TextButton(
                //   onPressed: toggleArrows,
                //   child: const Text("Change Orientation"),
                // )
              ],
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