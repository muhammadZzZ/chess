// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart';


import '../Utils/constrant.dart';
import '../Puzzle/chess.dart';

class PuzzleSolveScreen extends StatefulWidget {
  String puzzle;
  String rePuzzle;
  final int puzzleNumber;
  bool? isWhiteToMove;
  List solution;
  PuzzleSolveScreen({
    Key? key,
    required this.puzzle,
    required this.rePuzzle,
    required this.puzzleNumber,
    this.isWhiteToMove,
    required this.solution,
  }) : super(key: key);

  @override
  State<PuzzleSolveScreen> createState() => _PuzzleSolveScreenState();
}

class _PuzzleSolveScreenState extends State<PuzzleSolveScreen> {
  int turn=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:Chessboard(
         fen: widget.puzzle,

       onMove: (move) {
          //debugPrint("${move.from} hh ${move.to}");
            List<dynamic> solutions =widget.solution;
            var nextFen = makeMove(widget.puzzle, {
              'from': move.from,
              'to': move.to,
              'promotion': 'q',
            });
            if (nextFen != null) {
              setState(() {
                widget.puzzle = nextFen;
              });
            }

          if (solutions.length == 1) {
             if (move.to == solutions[0][1] &&
                 move.from == solutions[0][0]) {
               // solved = true;
               showDialogSuccess(
                 sORw: 'success',
                 title: 'Well Done',
                 description:
                     'you made best move here may be there are some good moves as well but only best move considered',
               ); 
               } else {
               if (nextFen != null) {
                 showDialogWrong(
                   sORw: 'wrong',
                   title: 'Mistake',
                   description:
                       'may be your move is not bad  but only best move considered here ',
                 );
               }
             }
             // alert dialog to say success
          }
          if (solutions.length == 3) {
                                  switch (turn) {
                                    case 0:
                                      if (move.to == solutions[0][1] &&
                                          move.from == solutions[0][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[1]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;
                                    case 1:
                                      if (move.to == solutions[2][1] &&
                                          move.from == solutions[2][0]) {
                                       
                                        showDialogSuccess(
                                          sORw: 'success',
                                          title: 'Well Done',
                                          description:
                                              'you made best move here may be there are some good moves as well but only best move considered',
                                        );
                                      
                                      } else {
                                        if (nextFen != null) {
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;

                                    default:
                                  }
                                }


          if (solutions.length == 5) {
                                  switch (turn) {
                                    case 0:
                                      if (move.to == solutions[0][1] &&
                                          move.from == solutions[0][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[1]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;

                                    case 1:
                                      if (move.to == solutions[2][1] &&
                                          move.from == solutions[2][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[3]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                      
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;
                                    case 2:
                                      if (move.to == solutions[4][1] &&
                                          move.from == solutions[4][0]) {
                                        
                                        showDialogSuccess(
                                          sORw: 'success',
                                          title: 'Well Done',
                                          description:
                                              'you made best move here may be there are some good moves as well but only best move considered',
                                        );
                                        
                                      } else {
                                        if (nextFen != null) {
                                    
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;

                                    default:
                                  }
          }
          if (solutions.length == 7) {
                                  switch (turn) {
                                    case 0:
                                      if (move.to == solutions[0][1] &&
                                          move.from == solutions[0][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[1]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                         
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;

                                    case 1:
                                      if (move.to == solutions[2][1] &&
                                          move.from == solutions[2][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[3]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                         
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;
                                    case 2:
                                      if (move.to == solutions[4][1] &&
                                          move.from == solutions[4][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[5]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                          
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;
                                    case 3:
                                      if (move.to == solutions[6][1] &&
                                          move.from == solutions[6][0]) {
                                        
                                        showDialogSuccess(
                                          sORw: 'success',
                                          title: 'Well Done',
                                          description:
                                              'you made best move here may be there are some good moves as well but only best move considered',
                                        );
                                       
                                      } else {
                                        if (nextFen != null) {
                                          
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;

                                    default:
                                  }
                                }

         },
    orientation:widget.isWhiteToMove ?? false ?  Color.WHITE : Color.BLACK, size: gWidth*.95,
    lightSquareColor: PrimaryColor,  
    darkSquareColor: SecondaryColor,     
)
      ),
    );
  }



  showDialogSuccess({sORw, title, description}) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) =>AlertDialog(
          title: Text("Your men"),

        ) );}

  showDialogWrong({sORw, title, description}) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => AlertDialog(
          actions: [
            ElevatedButton(onPressed: () {
                  setState(() {
                  widget.puzzle = widget.rePuzzle;
                  turn = 0;
                  Navigator.pop(context);
                });
            }, child: Text("Hello am i under the water "))
          ],
          title: Text("Your women"),

        ) );}

}
//{
// SimpleChessBoard(
//     engineThinking: false,
//          fen: widget.puzzle,

//        onMove: ({required move}) async{
//           //debugPrint("${move.from} hh ${move.to}");
//             List<dynamic> solutions =widget.solution;
//             var nextFen = makeMove(widget.puzzle, {
//               'from': move.from,
//               'to': move.to,
//               'promotion': 'q',
//             });
//             if (nextFen != null) {
//               setState(() {
//                 widget.puzzle = nextFen;
//               });
//             }

//           if (solutions.length == 1) {
//              if (move.to == solutions[0][1] &&
//                  move.from == solutions[0][0]) {
//                // solved = true;
//                showDialogSuccess(
//                  sORw: 'success',
//                  title: 'Well Done',
//                  description:
//                      'you made best move here may be there are some good moves as well but only best move considered',
//                ); 
//                } else {
//                if (nextFen != null) {
//                  showDialogWrong(
//                    sORw: 'wrong',
//                    title: 'Mistake',
//                    description:
//                        'may be your move is not bad  but only best move considered here ',
//                  );
//                }
//              }
//              // alert dialog to say success
//           }
//           if (solutions.length == 3) {
//                                   switch (turn) {
//                                     case 0:
//                                       if (move.to == solutions[0][1] &&
//                                           move.from == solutions[0][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[1]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;
//                                     case 1:
//                                       if (move.to == solutions[2][1] &&
//                                           move.from == solutions[2][0]) {
                                       
//                                         showDialogSuccess(
//                                           sORw: 'success',
//                                           title: 'Well Done',
//                                           description:
//                                               'you made best move here may be there are some good moves as well but only best move considered',
//                                         );
                                      
//                                       } else {
//                                         if (nextFen != null) {
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;

//                                     default:
//                                   }
//                                 }


//           if (solutions.length == 5) {
//                                   switch (turn) {
//                                     case 0:
//                                       if (move.to == solutions[0][1] &&
//                                           move.from == solutions[0][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[1]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;

//                                     case 1:
//                                       if (move.to == solutions[2][1] &&
//                                           move.from == solutions[2][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[3]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
                                      
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;
//                                     case 2:
//                                       if (move.to == solutions[4][1] &&
//                                           move.from == solutions[4][0]) {
                                        
//                                         showDialogSuccess(
//                                           sORw: 'success',
//                                           title: 'Well Done',
//                                           description:
//                                               'you made best move here may be there are some good moves as well but only best move considered',
//                                         );
                                        
//                                       } else {
//                                         if (nextFen != null) {
                                    
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;

//                                     default:
//                                   }
//           }
//           if (solutions.length == 7) {
//                                   switch (turn) {
//                                     case 0:
//                                       if (move.to == solutions[0][1] &&
//                                           move.from == solutions[0][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[1]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
                                         
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;

//                                     case 1:
//                                       if (move.to == solutions[2][1] &&
//                                           move.from == solutions[2][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[3]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
                                         
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;
//                                     case 2:
//                                       if (move.to == solutions[4][1] &&
//                                           move.from == solutions[4][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[5]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
                                          
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;
//                                     case 3:
//                                       if (move.to == solutions[6][1] &&
//                                           move.from == solutions[6][0]) {
                                        
//                                         showDialogSuccess(
//                                           sORw: 'success',
//                                           title: 'Well Done',
//                                           description:
//                                               'you made best move here may be there are some good moves as well but only best move considered',
//                                         );
                                       
//                                       } else {
//                                         if (nextFen != null) {
                                          
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;

//                                     default:
//                                   }
//                                 }

//          },
//     orientation:widget.isWhiteToMove ?? false ?  BoardColor.white: BoardColor.black,
//     whitePlayerType: PlayerType.human,
//     blackPlayerType: PlayerType.computer,
//     lastMoveToHighlight: BoardArrow(from: 'e2', to: 'e4', color: Colors.blueAccent),
//     onPromote: () async{},
       
// )}